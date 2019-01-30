df <- iris[,0:4]
df
res.cov <- cov(df)
res.cov
round(res.cov,2)
df.scaled <- scale(df, center = TRUE, scale = TRUE)
#Correlation matrix
res.cor <- cor(df.scaled)
round(res.cor, 2)
# 2. Calculate eigenvectors/eigenvalues
res.eig <- eigen(res.cor)
res.eig
# Transpose eigeinvectors
eigenvectors.t <- t(res.eig$vectors)
# Transpose the adjusted data
df.scaled.t <- t(df.scaled)
# The new dataset
df.new <- eigenvectors.t %*% df.scaled.t
# Transpose new data ad rename columns
df.new <- t(df.new)
colnames(df.new) <- c("PC1", "PC2", "PC3", "PC4")
head(df.new)
