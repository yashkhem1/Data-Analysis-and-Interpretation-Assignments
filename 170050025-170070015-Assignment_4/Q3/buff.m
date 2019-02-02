clear;
images = loadMNISTImages('MNIST/train-images-idx3-ubyte');
labels = loadMNISTLabels('MNIST/train-labels-idx1-ubyte');
% 
% for i=1:10
%     a=images(:,labels(:)==i-1);
%     %indices(i+1)=indices(i)+size(a,2);
%     %sorted_images(:,indices(i):indices(i+1)-1)=a;
%     mu=mean(a,2);
%     cov=bsxfun(@minus,a,mu)*bsxfun(@minus,a,mu)';
%     subplot(3,4,i);
%     imshow(reshape(mu,28,28));
% end

% for i=1:10
%     a=images(:,labels(:)==i-1);
%     %indices(i+1)=indices(i)+size(a,2);
%     %sorted_images(:,indices(i):indices(i+1)-1)=a;
%     mu=mean(a,2);
%     cov=bsxfun(@minus,a,mu)*bsxfun(@minus,a,mu)';
%     cov=cov/size(a,2);
%     subplot(3,4,i);
%     [Q,lambda]=eig(cov);
%     ind=lambda(:,:)>0;
%     % for i=1:10
% %     a=images(:,labels(:)==i-1);
% %     %indices(i+1)=indices(i)+size(a,2);
% %     %sorted_images(:,indices(i):indices(i+1)-1)=a;
% %     mu=mean(a,2);
% %     cov=bsxfun(@minus,a,mu)*bsxfun(@minus,a,mu)';
% %     cov=cov/size(a,2);
% %     subplot(10,3,3*(i-1)+1);
% %     [Q,lambda]=eig(cov);
% %     [x,y]=find(lambda==max(max(lambda)));
% %     im1=mu-((lambda(x,x)^0.5)*Q(:,x));
% %     im2=mu;
% %     im3=mu+((lambda(x,x)^0.5)*Q(:,x));
% %     imshow(reshape(im1,28,28))
% %     subplot(10,3,3*(i-1)+2);
% %     imshow(reshape(im2,28,28))
% %     subplot(10,3,3*(i-1)+3);
% %     imshow(reshape(im3,28,28))
% % end
%     p=lambda(ind);
%     sort(p);
%     scatter(1:size(p),p(end:-1:1));
% end

for i=1:10
    a=images(:,labels(:)==i-1);
%     indices(i+1)=indices(i)+size(a,2);
%     sorted_images(:,indices(i):indices(i+1)-1)=a;
    mu=mean(a,2);
    cov=bsxfun(@minus,a,mu)*bsxfun(@minus,a,mu)';
    cov=cov/size(a,2);
    subplot(10,3,3*(i-1)+1);
    [Q,lambda]=eig(cov);
    [x,y]=find(lambda==max(max(lambda)));
    im1=mu-((lambda(x,x)^0.5)*Q(:,x));
    im2=mu;
    im3=mu+((lambda(x,x)^0.5)*Q(:,x));
    imshow(reshape(im1,28,28))
    subplot(10,3,3*(i-1)+2);
    imshow(reshape(im2,28,28))
    subplot(10,3,3*(i-1)+3);
    imshow(reshape(im3,28,28))
end