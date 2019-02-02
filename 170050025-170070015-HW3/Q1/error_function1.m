function [error_ml,error_map1,error_map2] = error_function1(n,m)
    error_ml=zeros(m,1);
    error_map1=zeros(m,1);
    error_map2=zeros(m,1);
    for i=1:m
        x=4*randn(n,1)+10;
        mu_ml=sum(x)/n;
        mu_map1=((mu_ml*1)+((10.5*16)/n))/((1)+(16/n));
        if mu_ml<=11.5 && mu_ml>=9.5
            mu_map2=mu_ml;
        else if mu_ml>11.5
            mu_map2=11.5;
        else
            mu_map2=9.5;
        end
        error_ml(i)=abs(mu_ml-10)/10;
        error_map1(i)=abs(mu_map1-10)/10;
        error_map2(i)=abs(mu_map2-10)/10;
    end
end

        
    