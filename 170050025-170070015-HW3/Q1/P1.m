clear;
clc;
n=[5,10,20,  40,  60,  80,  100,  500,1000,10000];
m=100;
errors_ml=zeros(m,10);
errors_map1=zeros(m,10);
errors_map2=zeros(m,10);
for i = 1:10
    [errors_ml(:,i),errors_map1(:,i),errors_map2(:,i)]=error_function1(n(i),m);
end
% boxplot([errors_ml,errors_map1,errors_map2]);
figure;
subplot(3,1,1);
boxplot(errors_ml,n);
title('Maximum Likelihood Estimate')
xlabel('N')
ylabel('Relative Error')
subplot(3,1,2);
boxplot(errors_map1,n);
title('Bayesian Estimate with Gaussian Prior')
xlabel('N')
ylabel('Relative Error')
subplot(3,1,3);
boxplot(errors_map2,n);
title('Bayesian Estimate with Uniform Prior')
xlabel('N')
ylabel('Relative Error')
% % 