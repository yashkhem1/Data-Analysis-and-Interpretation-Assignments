function [joint_hist,hist_a,hist_b]=getJointHist(a,b)
joint_hist=zeros(26,26);
for i = 1:length(a)
    for j = 1:length(a(1,:))
        x=floor(a(i,j)/10+1);
       % display(x);
        y=floor(b(i,j)/10+1);
        joint_hist(x,y)=joint_hist(x,y)+1;
    end
end
joint_hist=joint_hist/(length(a)*length(a(1,:)));
hist_b=sum(joint_hist);
hist_a=sum(joint_hist,2);
end