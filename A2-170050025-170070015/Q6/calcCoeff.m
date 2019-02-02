function cor_coeff=calcCoeff(a,b)
n = size(a,1)*size(a,2);
s_x=sum(sum(a));
s_y=sum(sum(b));
s_xy=sum(sum(a.*b));
s_x2=sum(sum(a.*a));
s_y2=sum(sum(b.*b));
dr=((n*s_x2-s_x*s_x)*(n*s_y2-s_y*s_y))^0.5;
nr=(n*s_xy-s_x*s_y);
cor_coeff=nr/dr;
end