# VCNN - Double-Bladed Sword
Vectorized implementation of convolutional neural networks (CNN) in <b>Matlab</b> for both visual recognition and image processing. It's a unified framework for both high level and low level computer vision tasks.

## How to use it
You can directly try the demos without reading any of the document. Just launch [applications/MNIST/mnist_train_demo.m](https://github.com/vcnn/vcnn_double-bladed/blob/master/applications/MNIST/mnist_train_demo.m)<br>
Please visit the [project website](http://vcnn.deeplearning.cc) for all documents, examples and videos.

## Hardware/software requirements
1. Matlab 2014b or later (currently tested in Windows 7)<br>
2. A Nvidia GPU with 2GB GPU memory or above (if you would like to run on GPU). You can also run the code without a GPU by specifying "config.compute_device = 'CPU';" in the config file (e.g. [mnist_configure.m](https://github.com/vcnn/vcnn_double-bladed/blob/master/applications/MNIST/mnist_configure.m)) <br>

## Videos
TBA

## Contributors
[Jimmy SJ. Ren](http://www.jimmyren.com) (jimmy.sj.ren@gmail.com)<br>
[Li Xu](http://www.lxu.me) (xulihk@lenovo.com)

## Citation
Cite our papers if you find this software useful.<br>
1. Jimmy SJ. Ren and Li Xu, "[On Vectorization of Deep Convolutional Neural Networks for Vision Tasks](http://eportal.cityu.edu.hk/bbcswebdav/users/sjren2/~jimmy/papers/aaai_vcnn.pdf)", 
The 29th AAAI Conference on Artificial Intelligence (<b>AAAI-15</b>). Austin, Texas, USA, January 25-30, 2015<br>
2. Li Xu, Jimmy SJ. Ren, Ce Liu, Jiaya Jia, "[Deep Convolutional Neural Network for Image Deconvolution](http://papers.nips.cc/paper/5485-deep-convolutional-neural-network-for-image-deconvolution.pdf)", Advances in Neural Information Processing Systems (<b>NIPS 2014</b>). Montreal, Quebec, Canada, December 8-13, 2014<br>


