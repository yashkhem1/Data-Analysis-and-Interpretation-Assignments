function pi=P1(N)
rng(0);
pi=0;
if(N>10^8)
    for i=1:10
        X1=2*rand(N/10,1,'single')-1;
        X2=2*rand(N/10,1,'single')-1;
        ind=X1(:).^2 + X2(:).^2 <=1;
        buff=size(X1(ind));
        buff=buff(1);
        pi=pi+buff;
    end
else
        X1=2*rand(N,1,'single')-1;
        X2=2*rand(N,1,'single')-1;
        ind=X1(:).^2 + X2(:).^2 <=1;
        buff=size(X1(ind));
        buff=buff(1);
        pi=pi+buff;
end
pi=(4*pi/N);
end
