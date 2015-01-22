%--------------------------------------------------------------------------------------------------------
% The system is created based on the principles described in the following paper
% Jimmy SJ. Ren and Li Xu, "On Vectorization of Deep Convolutional Neural Networks for Vision Tasks", 
% The 29th AAAI Conference on Artificial Intelligence (AAAI-15). Austin, Texas, USA, January 25-30, 2015
% email: jimmy.sj.ren@gmail.com
%--------------------------------------------------------------------------------------------------------
addpath applications/
addpath utils/
addpath cuda/
addpath mem/
addpath layers/
addpath layers_adapters/
addpath pipeline/
addpath data/MNIST/

clearvars -global config;
clearvars -global mem;

denoise_configure();
init(0);
global config;

% for gradient checking

%image = config.NEW_MEM(ones(64, 64, 3, config.batch_size));
%label = config.NEW_MEM(ones(56, 56, 3, config.batch_size));

img = im2double(imread('C:\Info\Jimmy\code\VCNN_improc\data\input\blurred_images\non-saturated_disk7\1.png'));
startpt = 150;
image = config.NEW_MEM((img(startpt:startpt+64-1, startpt:startpt+64-1, :)));
label = config.NEW_MEM((image(1:56, 1:56, :)));

image = repmat(image, 1,1,1,config.batch_size);
label = repmat(label, 1,1,1,config.batch_size);

op_train_pipe(image, label);
computeNumericalGradient(image, label, 1);

%{
% for speed testing
I = gpuArray(single(rand(32,32,1,config.batch_size)));
y = gpuArray(single(rand(10, config.batch_size)));
loop = 100;
tic
for m = 1:loop
op_train_pipe(I, y);
end
toc/loop/config.batch_size

%}


