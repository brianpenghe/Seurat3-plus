# Seurat3-plus
A set of R codes to make Seurat3 running easier

# Import/Export/File format conversion:
`ImportMetadata` and `ImportMetadataCSV` plugs in the metadata information stored in a *data.frame* or *csv* file into an existing *Seurat object*.

`SaveUMAP` saves a specified embedding(such as UMAP)'s coordinates into a *csv* file.

`Meta2UMAP` converts the embedding coordinates that were saved in the as *metadata* in the Seurat object into the *embedding* slots.

`MM10X_to_Seurat` reads data in MatrixMarket format (with metadata stored in "metadata.tsv") into a Seurat object,.

`Seurat_to_MM10X` writes the Seurat object's counts and meta.data into MatrixMarket and tsv files.

# Other functions:
`DefaultRun` quickly runs a Seurat workflow to process a Seurat object (Normalize, HVG, regress, scale, PCA, cluster, tSNE). It is useful to quickly fill the slots of a Seurat object with placeholders.

`PairwiseMarkers` compares every pair of two cell types and returns marker genes.

`JackstrawSummary` reports the significant (useful) PCs after Jackstraw algorithm to filter out the significant PCs.   
