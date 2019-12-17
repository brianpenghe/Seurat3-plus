#This function takes a Seurat3 object and saves its embedding coordinates into a csv file
#
SaveUMAP <- function(Seurat,reduction='umap',filename='temp.csv'){
	if (reduction == 'umap'){
            write.csv(Seurat$umap@cell.embeddings,filename)
        } else if (reduction == 'tsne'){
            write.csv(Seurat$tsne@cell.embeddings,filename)
        } else {
        print("reduction method not found!")
        exit()
        }
}
