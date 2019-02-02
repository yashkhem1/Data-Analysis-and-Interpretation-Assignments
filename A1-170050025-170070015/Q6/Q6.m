
x=[5, 10, 15, 20, 30, 40, 50, 60, 70, 80, 90, 95, 99, 99.99, 99.9999, 100];
y=zeros(1,size(x,2));
%x=1:0.1:100;
for i = 1 : size(x,2)y
    y(i)=findX(x(i));
end
x=x/100
h=plot(x,y)
title('Number of People vs Probability')
saveas(h,'Q6.jpg') 
   