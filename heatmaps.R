#heatmap(data)
# heatmap only accepts matrix not dataframes
class(mtcars)
a<-as.matrix(mtcars)  # converting the heatmap dataframe into matrix coz heatmap function only accepts matrix
class(a)
heatmap(a)
#  normalizing the matrix is done using the scale argument using Colv and Rowv
heatmap(a,scale="column")
heatmap(a, Colv=NA,Rowv = NA,scale = "column")
# No dendrogram nor reordering for neither column or row
# Dendograms mean the lines present in the heatmap just maps or trees like a connection b/w parent and child. will be observable in the above heatmap implementations
heatmap(a, Colv = NA, Rowv = NA, scale = "column",
        col=cm.colors(256),xlab = "Variable",ylab = "Car")

# plot the heatmap for iris
b<-data.matrix(iris)
class(b)
heatmap(b)
heatmap(b,scale="column")
heatmap(b, Colv=NA,Rowv = NA,scale = "column")
# No dendrogram nor reordering for neither column or row
# Dendograms mean the lines present in the heatmap just maps or trees like a connection b/w parent and child. will be observable in the above heatmap implementations
heatmap(b, Colv = NA, Rowv = NA, scale = "column",
        col=hcl.colors(256),xlab = "Properties",ylab = "Value")