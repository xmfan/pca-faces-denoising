clear all
close all

load noisy

[Xh U Y gamma] = mypca(X, 2)

% compute 5 random indices
index1 = ceil(rand*1965)
index2 = ceil(rand*1965)
index3 = ceil(rand*1965)
index4 = ceil(rand*1965)
index5 = ceil(rand*1965)

% 5 original images
og1 = reshape(X(:,index1),20,28)'
og2 = reshape(X(:,index2),20,28)'
og3 = reshape(X(:,index3),20,28)'
og4 = reshape(X(:,index4),20,28)'
og5 = reshape(X(:,index5),20,28)'

% 5 respective reconstructed images
re1 = reshape(Xh(:,index1),20,28)'
re2 = reshape(Xh(:,index2),20,28)'
re3 = reshape(Xh(:,index3),20,28)'
re4 = reshape(Xh(:,index4),20,28)'
re5 = reshape(Xh(:,index5),20,28)'

% plot
subplot(2,5,1)
imagesc(og1)
colormap gray
subplot(2,5,2)
imagesc(og2)
colormap gray
subplot(2,5,3)
imagesc(og3)
colormap gray
subplot(2,5,4)
imagesc(og4)
colormap gray
subplot(2,5,5)
imagesc(og5)
colormap gray


subplot(2,5,6)
imagesc(re1)
colormap gray
subplot(2,5,7)
imagesc(re2)
colormap gray
subplot(2,5,8)
imagesc(re3)
colormap gray
subplot(2,5,9)
imagesc(re4)
colormap gray
subplot(2,5,10)
imagesc(re5)
colormap gray

uiwait
