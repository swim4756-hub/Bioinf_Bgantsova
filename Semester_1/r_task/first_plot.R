# Create vectors
genes <- c("BRCA1", "TP53", "EGFR")
expression <- c(12.5, 45.2, 30.1)
condition <- c("Control", "Treatment", "Treatment")

# Combine into data frame
exp_data <- data.frame(genes, expression, condition)

# Display structure
str(exp_data)

# Create barplot and save
png("r_task/expression_plot.png")
barplot(exp_data$expression, names.arg = exp_data$genes, 
        xlab = "Genes", ylab = "Expression", 
        main = "Gene Expression Levels")
dev.off()	
