#This function reads MatrixMarket files into a Seurat object. It also reads metadata stored in metadata.tsv
MM10X_to_Seurat <- function(prefix){
        ###prefix can be "temp/"
        Seurat <- CreateSeuratObject(Read10X(data.dir=prefix))
        Meta=read.csv(paste(prefix,"metadata.tsv",sep=""),sep="\t")
        Seurat <- ImportMetadata(Seurat,Meta)
	return(Seurat)
}
