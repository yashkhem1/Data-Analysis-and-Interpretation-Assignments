function qmi=get_qmi(a,b)
qmi=0;
[jh,ja,jb]=getJointHist(a,b);

for i = 1:26
    for j= 1:26
        qmi=qmi+(jh(i,j)-ja(i)*jb(j))^2;
    end
end
end