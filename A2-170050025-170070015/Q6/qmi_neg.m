a=double(imread('T1.jpg'));
%for i in range(0,10)
%b=double(imread('T2.jpg'));
b = 255-a;
%image(a)
%colorbar;
rho=zeros(21,1);
for i = 10:-1:1
    c=b(1:532,i+1:end);
    c=cat(2,c,zeros(532,i));
    rho(11-i)=get_qmi(a,c);
end;
rho(11)=get_qmi(a,b);
for i = 1:10
    c=b(1:532,1:end-i);
    c=cat(2,zeros(532,i),c);
    rho(i+11)=get_qmi(a,c);
end;
%rho
h = plot(-10:10,rho); title('QMI for negative image') ; xlabel('tx(shift)'); ylabel('QMI');
saveas(h,'qmi_neg.jpg');
