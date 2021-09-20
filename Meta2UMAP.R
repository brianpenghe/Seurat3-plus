#This function takes x and y coordinates stored in metadata and insert them into umap slot
#
Meta2UMAP <- function(Seurat,x="X_umap_x",y="X_umap_y",reduction='umap',CPU=16){
#Create UMAP slot by running the default calculations
    library(future)
    plan("multiprocess", workers = CPU)
    DefaultAssay(Seurat) <- "RNA"
    Seurat <- NormalizeData(Seurat)
    Seurat <- FindVariableFeatures(Seurat, selection.method = "vst", nfeatures = 2000)
    all.genes <- rownames(Seurat)
    Seurat <- ScaleData(Seurat)
    Seurat <- RunPCA(Seurat, assay = "RNA", verbose = FALSE)
    Seurat <- RunUMAP(Seurat, reduction = "pca", dims = 1:30)

#Now replace the umap coordinates
    submat <- as.matrix(Seurat@meta.data[c(x,y)])
    colnames(submat) <- c("UMAP_1","UMAP_2")
    Seurat@reductions$umap@cell.embeddings <- submat
    return(Seurat)
}
