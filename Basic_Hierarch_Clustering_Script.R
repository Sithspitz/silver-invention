# Unfinished Clustering Script
## Non-descriptive basic script for STK11 example

# Load Data (Txt)
STK11_only_protein_data_04_12_18 <- read.delim("H:/My Documents/Analysis/December 2018/STK11 and KRAS Protein Expression vs RORC Expression/STK11_only_protein_data_04_12_18.txt", header=FALSE, row.names=1)

# View Data
str()
view (STK11_only_protein_data_04_12_18)

# Calculate Distance Matrix
STK11_dist_mat <- dist(STK11_only_protein_data_04_12_18, method = 'euclidean')

# Clustering and Plotting
STK11_protein_clustered <- hclust(STK11_dist_mat, method = 'average')
plot(STK11_protein_clustered, cex = .5)
