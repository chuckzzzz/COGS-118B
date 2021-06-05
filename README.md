# COGS 118B Spring 2021 Project: Dimensionality Reduction and Clustering of Single Cell ATAC-seq Data from Mouse Brains
## Team name: The Gradients (Ziyang Zhang, Bonnie Huang, Rita Wan, Yuqing Shen, Zhiyang Xu)

This project aims to classify the types of neural cells in mouse brains using unsupervised machine learning. The dataset is a open dataset of 5K cells from the adult mouse brain available from 10X Genomics. The original dataset can be found [here](https://github.com/r3fang/SnapATAC/blob/master/examples/10X_brain_5k/README.md).

We performed 3 types of clustering (Gaussian mixture, K-means, Spectral clustering) on 4 reduced matrices obtained from the following dimensionality reduction methods: Diffusion map, Principal component analysis, Truncated singular value decomposition, t-distributed stochastic neighbor embedding. The code for each dimensionality reduction method is in a seperate Jupyter notebook. The folder `Clustering and results` contains the Jupyter notebooks that perform the clustering and all the figures/tables that report the results. Details about the results can be found in the README file inside the folder.
