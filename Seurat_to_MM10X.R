#This set of functions exports the counts of Seurat to matrixmarket
#Note that only Gene Expression is exported
Seurat_to_MM10X <- function(Seurat,prefix){
        ###prefix can be "temp/"
writeMM(Seurat@assays$RNA@counts,paste(prefix,"matrix.mtx",sep=""))
write(x = rownames(Seurat@assays$RNA@counts),file = paste(prefix,"genes.tsv",sep=""))
write(x = colnames(Seurat@assays$RNA@counts),file = paste(prefix,"barcodes.tsv",sep=""))
write.table(x = Seurat@meta.data, file = paste(prefix,"metadata.tsv",sep=""),
quote=FALSE,sep="\t")
}
