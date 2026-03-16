# Load necessary libraries
if (!require("ggplot2")) install.packages("ggplot2", repos='http://cran.us.r-project.org')
library(ggplot2)

# Load the data
data <- read.csv("survey_data.csv")

# 1. Graph: How many respondents manage data by memory vs other methods
methods <- data.frame(
  Method = c("Memory", "Phone", "Paper"),
  Count = c(
    sum(data$Manages_by_Memory == "Yes"),
    sum(data$Manages_by_Phone == "Yes"),
    sum(data$Manages_by_Paper == "Yes")
  )
)

p1 <- ggplot(methods, aes(x = Method, y = Count, fill = Method)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Methods of Managing Data Among Scout Leaders",
       y = "Number of Respondents",
       x = "Management Method") +
  scale_fill_brewer(palette = "Set2")

ggsave("data_management_methods.png", p1)

# 2. Graph: Perceived Difficulties
difficulties <- data.frame(
  Category = c("Current System", "Archive Search", "Report Workflow"),
  Count_Difficult = c(
    sum(data$Current_Difficulty == "Yes"),
    sum(data$Archive_Difficulty == "Yes"),
    sum(data$Workflow_Difficulty == "Yes")
  )
)

p2 <- ggplot(difficulties, aes(x = Category, y = Count_Difficult, fill = Category)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Perceived Difficulties in Current Processes",
       y = "Number of Respondents Reporting Difficulty",
       x = "Process Category") +
  scale_fill_brewer(palette = "Pastel1")

ggsave("process_difficulties.png", p2)

print("Analysis complete. Graphs saved as 'data_management_methods.png' and 'process_difficulties.png'.")
