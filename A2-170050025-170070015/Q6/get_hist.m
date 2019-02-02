function hist=get_hist(a)
hist=zeros(26);
for i = 1:1:length(a)
    for j = 1:1:length(a(1,:))
        x=floor(a(i,j)/10+1);
        hist(x)=hist(x)+1;
    end
end
hist=hist/(length(a)*length(a(1,:)));
end