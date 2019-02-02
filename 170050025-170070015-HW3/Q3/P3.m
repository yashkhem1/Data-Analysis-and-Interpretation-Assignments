N=100000000;
theta=2*pi*rand(N,1);
r=2;
x=(r*cos(theta));
y=(r*sin(theta));
X=rand(N,2);
X(:,1)=x;
X(:,2)=y;
mu=sum(X)/N;
c=zeros(2,2);

for i=1:N
    c=c+((X(i,:)-mu)'*(X(i,:)-mu));
end
disp(sum(X)/N);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    N);
disp(c/N);
