#This file actually imports a tsv file and add the content to metadata
ImportMetadataCSV <- function(Seurat,Metafile){
        Meta=read.csv(Metafile,sep='\t')
        ##Meta is a data.frame of metadata columns - one feature per column
	for (item in colnames(Meta)){
            Seurat <- AddMetaData(Seurat, Meta[,item], col.name = item)
        }
	return(Seurat)
}
