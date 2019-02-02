function mvg=P2(N,mu,C)
    %rng(0);
    [Q,lambda]=eig(C);
    A=Q*(lambda)^(0.5);
    W=randn(2,N);
    mvg=A*W;
    mvg=bsxfun(@plus,mvg,mu);
end
