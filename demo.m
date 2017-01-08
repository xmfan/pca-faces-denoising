load noisy.mat

% inputs
sample_face_1 = reshape(X(:,1),20,28)
sample_face_2 = reshape(X(:,120),20,28)
sample_face_3 = reshape(X(:,250),20,28)
sample_face_4 = reshape(X(:,302),20,28)
display_1 = rot90(sample_face_1,-1)
display_2 = rot90(sample_face_2,-1)
display_3 = rot90(sample_face_3,-1)
display_4 = rot90(sample_face_4,-1)

% PC1
pcs_1 = pca(X)
Y = X*pcs_1
pc_1 = reshape(Y(:,1),20,28)
pc_2 = reshape(Y(:,2),20,28)
pc_3 = reshape(Y(:,3),20,28)
pc_4 = reshape(Y(:,100),20,28)
display_1r = rot90(pc_1,-1)
display_2r = rot90(pc_2,-1)
display_3r = rot90(pc_3,-1)
display_4r = rot90(pc_4,-1)

% PC2 
t_X = X(:,120:1965)
pcs_2 = pca(t_X)
Z = t_X*pcs_2
pc = reshape(Z(:,1),20,28)
display = rot90(pc,-1)

% demo
figure
imagesc(display_1)
colormap gray
figure
imagesc(display_2)
colormap gray
figure
imagesc(display_3)
colormap gray
figure
imagesc(display_4)
colormap gray
uiwait


figure
imagesc(display_1r)
colormap gray
figure
imagesc(display_2r)
colormap gray
figure
imagesc(display_3r)
colormap gray
figure
imagesc(display_4r)
colormap gray
uiwait

figure
imagesc(display_1)
colormap gray
figure
imagesc(display_1r)
colormap gray
figure
imagesc(display_2)
colormap gray
figure
imagesc(display)
colormap gray
uiwait
