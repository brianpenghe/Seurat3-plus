#This set of functions prints Jackstraw results of a Seurat object and reports which are significant
#Note that the number of PCs needs to be dividable by the row number you specified
#It returns a list of significant PCs
ImportMetadata <- function(Seurat,Meta){
        ##Meta is a data.frame of metadata columns - one feature per column
	for (item in colnames(Meta)){
            Seurat <- AddMetaData(Seurat, Meta[,item], col.name = item)
        }
	return(Seurat)
}
