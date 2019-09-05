#This set of functions blindly processes the data without any optimizations
#It returns an object
DefaultRun <- function(Seurat,dim=1:50,nfeatures = 2000){
	Lung <- NormalizeData(Seurat, assay='RNA')
	Lung <- FindVariableFeatures(Lung, assay='RNA',nfeatures = nfeatures)
	Lung <- ScaleData(object = Lung, assay = 'RNA')
	Lung <- RunPCA(object = Lung,assay = 'RNA',seed.use=1,npcs=50)
	Lung <- FindNeighbors(object = Lung,assay='RNA',dims=dim)
	Lung <- FindClusters(object = Lung, random.seed = 1,resolution=0.5)
	Lung <- RunTSNE(object = Lung, dims=dim, seed.use = 1)
	print(DimPlot(Lung, label = TRUE))
	return(Lung)
}
