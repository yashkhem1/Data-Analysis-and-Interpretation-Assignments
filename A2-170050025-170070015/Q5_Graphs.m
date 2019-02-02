%probability < 1-(1/x)^(1/x)
p1=0.1;
p2=0.12;
x=2:25;
y1=zeros(1,24);
y2=zeros(1,24);
for i = 1:24
    y1(i)= (i+2) - (i+1)*(1-p1)^(i+1);
    y2(i)= (i+2)-(i+1)*(1-p2)^(i+1);
end;
plot(x,y1,x,y2,x,x);
legend('0.1','0.15','x')