a=double(imread('T1.jpg'));
%for i in range(0,10)
b=double(imread('T2.jpg'));
%image(a)
%colorbar;
rho=zeros(21,1);
for i = 10:-1:1
    c=b(1:532,i+1:end);
    c=cat(2,c,zeros(532,i));
    rho(11-i)=calcCoeff(a,c);
end;
rho(11)=calcCoeff(a,b);
for i = 1:10
    c=b(1:532,1:end-i);
    c=cat(2,zeros(532,i),c);
    rho(i+11)=calcCoeff(a,c);
end;
%rho
h = plot(-10:10,rho); title('Correlation Coefficient for given images') ; xlabel('tx(shift)'); ylabel('Correlation Coefficient');
saveas(h,'corr_coff.jpg');
