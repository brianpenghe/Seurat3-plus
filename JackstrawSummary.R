#This set of functions prints Jackstraw results of a Seurat object and reports which are significant
#Note that the number of PCs needs to be dividable by the row number you specified
JackstrawSummary <- function(Seurat, nrow=50){
        npc <- dim(Seurat@reductions$pca@jackstraw@overall.p.values)[1]
	JStable=updated_MouseLimb10X@reductions$pca@jackstraw@overall.p.values[1:nrow,]
        for (i in 1:floor(npc/nrow-1)){
		JStable <- cbind(JStable,updated_MouseLimb10X@reductions$pca@jackstraw@overall.p.values[(nrow*i+1):(nrow*i+50),])
	}
	JStable
}
