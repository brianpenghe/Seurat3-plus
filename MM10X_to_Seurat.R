#This set of functions prints Jackstraw results of a Seurat object and reports which are significant
#Note that the number of PCs needs to be dividable by the row number you specified
#It returns a list of significant PCs
MM10X_to_Seurat <- function(prefix){
        ###prefix can be "temp/"
        Seurat <- CreateSeuratObject(Read10X(data.dir=prefix))
        Meta=read.csv(paste(prefix,"metadata.tsv",sep=""),sep="\t")
        Seurat <- ImportMetadata(Seurat,Meta)
	return(Seurat)
}
