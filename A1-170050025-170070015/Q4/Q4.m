clc;
clear;
clf;

x = [-3:0.02:3];
y = 5*cos(2.2*x+pi/3);
f=0.3;
random = randperm(size(y,2));
elems=floor(f*size(y,2));
z = y;
z(random(1:elems)) = z(random(1:elems)) + floor(100 + 20*rand(1,elems));
a=plot(x,y); title('y=5*cos(2.2*x+pi/3)'); saveas(a,'plot1.jpg');
figure; b=plot(x,z); title('Corrupted sine wave for f = 0.3'); saveas(b,'plot2.jpg');
%z = y_new + floor(100+20*rand(size(y_new,2)));

ymedian = zeros(1,size(z,2));
ymean = zeros(1,size(z,2));
yquartile = zeros(1,size(z,2));


for i = 1 : size(z,2)
    if i <= 8
        start=1;
        final=i+8;
    elseif i>=size(z,2)-8
        start=i-8;
        final=size(z,2);
    else
        start=i-8;
        final=i+8;  
        
    end
    
    ymedian(i)=median(z(start:final));
    ymean(i)=mean(z(start:final));
    yquartile(i)=quantile(z(start:final),0.25);
end

figure; c= plot(x,ymedian);
hold on; plot(x,ymean);
hold on; plot(x,yquartile);
legend('ymedian','ymean','yquartile');
title('Filtered sine waves for f = 0.3');
saveas(c,'plot3.jpg');
hold off;

%%display(ymedian)
%display(ymean)
%display(yquartile)
err_median= norm(ymedian-y)^2/norm(y)^2
err_mean= norm(ymean-y)^2/norm(y)^2
err_quartile= norm(yquartile-y)^2/norm(y)^2



    






