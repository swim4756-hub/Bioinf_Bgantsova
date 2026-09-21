# Read data
data <- read.csv("r_task/sample_data.csv")

# Mean Score
mean_score <- mean(data$Score)
cat("Mean Score:", mean_score, "\n")

# Max Score in Treatment group
treatment_scores <- data$Score[data$Group == "Treatment"]
max_treatment <- max(treatment_scores)
cat("Max Score in Treatment group:", max_treatment, "\n")

# Boxplot
png("r_task/score_boxplot.png")
boxplot(Score ~ Group, data = data, 
        main = "Score Distribution by Group",
        xlab = "Group", ylab = "Score")
dev.off()
