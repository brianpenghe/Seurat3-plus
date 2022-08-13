#This function calculates pair-wise differential genes among cell types.
#
PairwiseMarkers <- function(C1,min.pct=0.25,min.diff.pct=0.2){
        markers=NA
        for (i in levels(Idents(C1))){
            for (j in levels(Idents(C1))){
                tryCatch({
                    if (i==j){}
                    else{
                        temp<-FindMarkers(object = C1, ident.1 = i,
                        ident.2 = j,min.pct=min.pct,min.diff.pct=min.diff.pct,
                       only.pos=TRUE)
                        temp$compare <- paste(i,j, sep = " VS ")
                        markers<-rbind(markers,temp)}
                },error=function(e){cat("ERROR :",conditionMessage(e), "\n")})
                                            }
                                      }
        return(markers)
                                                             }
