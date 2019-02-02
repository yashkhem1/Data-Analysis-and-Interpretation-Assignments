n=[5,10,20,  40,  60,  80,  100,  500,1000,10000];
m=100;
errors_ml=zeros(m,10);
errors_pm=zeros(m,10);
for i = 1:10
    [errors_ml(:,i),errors_pm(:,i)]=error_function(n(i),m);
end
figure;
subplot(2,1,1);
boxplot(errors_ml,n);
title('Maximum Likelihood Estimate')
xlabel('N')
ylabel('Relative Error')
subplot(2,1,2);
boxplot(errors_pm,n);
title('Bayesian Estimate with Gamma prior')
xlabel('N')
ylabel('Relative Error')

    