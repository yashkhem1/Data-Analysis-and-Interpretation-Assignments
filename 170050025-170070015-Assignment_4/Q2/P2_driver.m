clear;
C=[[1.6250, -1.9486];[-1.9486, 3.8750]];
mu=[1;2];
errors_mu=zeros(100,5);
errors_c=zeros(100,5);
for i=1:5
    N=10^i;
    for j=1:100
        X=P2(N,mu,C);
        mu_hat=(sum(X,2))/N;
        C_hat=bsxfun(@minus,X,mu_hat)*bsxfun(@minus,X,mu_hat)';
        %disp(10^i);
        C_hat=C_hat/(N);
        %disp(size(C_hat));
        errors_mu(j,i)=(norm(mu_hat-mu)/norm(mu));
        errors_c(j,i)=(sqrt(sum(sum((C_hat-C).*(C_hat-C))))/sqrt(sum(sum((C).*(C)))));
    end
end
for i=1:5
    N=10^i;
    X=P2(N,mu,C);
    mu_hat=(mean(X,2));
    C_hat=bsxfun(@minus,X,mu_hat)*bsxfun(@minus,X,mu_hat)';
    C_hat=C_hat/N;
    [Q,lambda]=eig(C_hat);
    disp((C_hat));
    [x,y]=find(lambda==max(max(lambda)));
    figure(i)
      
    scatter(X(1,:),X(2,:));
    hold on;
    plot([mu_hat(1),mu_hat(1)+(lambda(x,x)*Q(1,x))],[mu_hat(2),mu_hat(2)+(lambda(x,x)*Q(2,x))],'r');
    [x,y]=find(lambda==min(max(lambda)));
    plot([mu_hat(1),mu_hat(1)+(lambda(x,x)*Q(1,x))],[mu_hat(2),mu_hat(2)+(lambda(x,x)*Q(2,x))],'r');
    axis equal;
    t=strcat('N=',num2str(N));
    title(t);
    path=strcat(strcat('N=',num2str(N)),'.jpg');
    saveas(gca,path);
end
figure(6);
boxplot(errors_c);
xlabel('Log(N)')
ylabel('Relative Error')
title('Error in Covariance Matrix')
saveas(gcf,'err_C.jpg')
figure(7);
boxplot(errors_mu);
xlabel('Log(N)')
ylabel('Relative Error')
title('Error in Mean')
saveas(gcf,'err_mu.jpg')