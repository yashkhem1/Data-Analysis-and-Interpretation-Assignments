function [error_ml,error_pm]=error_function(n,m)
    error_ml=zeros(m,1);
    error_pm=zeros(m,1);
    for i = 1:m
        x=rand(n,1);
        y=(-1/5)*log(x);
        lambda_ml=(n/sum(y));
        lambda_pm=(n+5.5)/(1+sum(y));
        error_ml(i)=abs(lambda_ml-5)/5;
        error_pm(i)=abs(lambda_pm-5)/5;
    end;
    %return ([error_ml,error_pm])