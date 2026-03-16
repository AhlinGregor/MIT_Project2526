# ============================================================
#  Scout Association Archive System — Survey Visualizations
#  Style: pastel fills, theme_minimal, no bar borders
#  Run:   Rscript survey_graphs.R
#  Output: PNG files in ./survey_plots/
# ============================================================

library(ggplot2)

dir.create("survey_plots", showWarnings = FALSE)

# Shared pastel palette
COL_RED    <- "#f4a6a0"
COL_BLUE   <- "#a8c4e0"
COL_GREEN  <- "#b7d9b0"
COL_ORANGE <- "#f7c79e"

base_style <- list(
  theme_minimal(base_size = 13),
  theme(
    plot.title  = element_text(size = 16, face = "bold"),
    axis.title  = element_text(size = 13),
    axis.text   = element_text(size = 11),
    panel.grid.major.x = element_blank(),
    legend.position = "none"
  )
)


# ── 1. Current data management methods (Q2) ─────────────────
#    3 columns: Memory | Notes (stacked) | No system

q2 <- data.frame(
  group  = c("Memory", "Notes", "Notes", "Notes", "No System"),
  method = c("Memory only", "Phone notes", "Physical notebook", "WhatsApp group", "No system"),
  count  = c(2, 2, 1, 1, 1)
)
q2$method <- factor(q2$method, levels = c("Memory only", "Phone notes", "Physical notebook", "WhatsApp group", "No system"))
q2$group  <- factor(q2$group, levels = c("Memory", "Notes", "No System"))

q2_colors <- c(
  "Memory only"            = "#a8c4e0",
  "Phone notes"   = "#f4a6a0",
  "Physical notebook"      = "#f7c79e",
  "WhatsApp group" = "#b7d9b0",
  "No system"              = "#c9b8d8"
)

ggplot(q2, aes(x = group, y = count, fill = method)) +
  geom_col(width = 0.45) +
  geom_text(aes(label = count), position = position_stack(vjust = 0.5), size = 4.5) +
  scale_fill_manual(values = q2_colors, name = "Method") +
  scale_y_continuous(breaks = 0:5, limits = c(0, 5.3)) +
  labs(title = "Current Data Management Methods",
       x = "Category", y = "Number of Respondents") +
  theme_minimal(base_size = 13) +
  theme(
    plot.title  = element_text(size = 16, face = "bold"),
    axis.title  = element_text(size = 13),
    axis.text   = element_text(size = 11),
    panel.grid.major.x = element_blank(),
    legend.position = "right"
  )

ggsave("survey_plots/1_data_management_methods.png", width = 8, height = 5, dpi = 150)
cat("Saved: 1_data_management_methods.png\n")


# ── 2. Do leaders check previous reports? (Q4) ──────────────
#    No vs Yes (stacked by method)

q4 <- data.frame(
  group  = c("No", "Yes", "Yes", "Yes"),
  method = c("Never", "Only own reports", "Contacts previous leader", "For major events only"),
  count  = c(3, 2, 1, 1)
)
q4$method <- factor(q4$method, levels = c("Only own reports", "Contacts previous leader", "For major events only", "Never"))

q4_colors <- c(
  "Only own reports"        = "#f4a6a0",
  "Contacts previous leader"= "#f7c79e",
  "For major events only"   = "#e8a0a0",
  "Never"                   = "#a8c4e0"
)

ggplot(q4, aes(x = group, y = count, fill = method)) +
  geom_col(width = 0.45) +
  geom_text(aes(label = count), position = position_stack(vjust = 0.5), size = 4.5) +
  scale_fill_manual(values = q4_colors, name = "Method") +
  scale_y_continuous(breaks = 0:7, limits = c(0, 7.5)) +
  labs(title = "Do You Check Previous Activity Reports?",
       x = "Answer", y = "Number of Respondents") +
  theme_minimal(base_size = 13) +
  theme(
    plot.title  = element_text(size = 16, face = "bold"),
    axis.title  = element_text(size = 13),
    axis.text   = element_text(size = 11),
    panel.grid.major.x = element_blank(),
    legend.position = "right"
  )

ggsave("survey_plots/2_check_previous_reports.png", width = 8, height = 5, dpi = 150)
cat("Saved: 2_check_previous_reports.png\n")


# ── 3. Where would you look for past reports? (Q5) ──────────
#    Justifies centralised archive with keyword/category search

q5 <- data.frame(
  source = c("Google Drive", "Ask individuals\ndirectly", "Personal\ncomputer", "Discord", "Inaccessible /\ndon't know"),
  count  = c(4, 3, 2, 2, 1),
  fill   = "#f4a6a0"
)

ggplot(q5, aes(x = reorder(source, -count), y = count, fill = fill)) +
  geom_col(width = 0.55) +
  geom_text(aes(label = count), vjust = -0.4, size = 4.5) +
  scale_fill_identity() +
  scale_y_continuous(breaks = 0:5, limits = c(0, 5.3)) +
  labs(title = "Where Would You Look for Previous Reports?",
       subtitle = "Multiple answers possible",
       x = "Source", y = "Number of Mentions") +
  base_style

ggsave("survey_plots/3_archive_access_sources.png", width = 8, height = 5, dpi = 150)
cat("Saved: 3_archive_access_sources.png\n")


# ── 4. Perceived difficulties by process category ───────────
#    Matches the style of the reference graph

difficulties <- data.frame(
  category = factor(
    c("Data Management", "Archive Search", "Report Workflow"),
    levels = c("Data Management", "Archive Search", "Report Workflow")
  ),
  count = c(4, 3, 6),
  fill  = c("#a8c4e0", "#f4a6a0", "#b7d9b0")
)

ggplot(difficulties, aes(x = category, y = count, fill = fill)) +
  geom_col(width = 0.55) +
  geom_text(aes(label = count), vjust = -0.4, size = 4.5) +
  scale_fill_identity(
    guide  = "legend",
    labels = c("Data Management", "Archive Search", "Report Workflow"),
    name   = "Category"
  ) +
  scale_y_continuous(breaks = 0:7, limits = c(0, 7.3)) +
  labs(title = "Perceived Difficulties in Current Processes",
       x = "Process Category",
       y = "Number of Respondents Reporting Difficulty") +
  theme_minimal(base_size = 13) +
  theme(
    plot.title  = element_text(size = 16, face = "bold"),
    axis.title  = element_text(size = 13),
    axis.text   = element_text(size = 11),
    panel.grid.major.x = element_blank(),
    legend.position = "right"
  )

ggsave("survey_plots/4_perceived_difficulties.png", width = 8, height = 5, dpi = 150)
cat("Saved: 4_perceived_difficulties.png\n")


# ── 5a. How are reports written? (Q7) ───────────────────────
#    Two bars: from memory vs. based on previous year

q7_writing <- data.frame(
  method = c("From memory\n(no notes)", "Based on\nprevious year"),
  count  = c(3, 3),
  fill   = c("#a8c4e0", "#b7d9b0")
)

ggplot(q7_writing, aes(x = method, y = count, fill = fill)) +
  geom_col(width = 0.45) +
  geom_text(aes(label = count), vjust = -0.4, size = 4.5) +
  scale_fill_identity() +
  scale_y_continuous(breaks = 0:5, limits = c(0, 4.5)) +
  labs(title = "How Are Reports Written?",
       x = "Method", y = "Number of Respondents") +
  base_style

ggsave("survey_plots/5a_report_writing.png", width = 6, height = 5, dpi = 150)
cat("Saved: 5a_report_writing.png\n")


# ── 5b. How are reports submitted? (Q7) ─────────────────────
#    Two bars: Google Forms vs. printed and handed in

q7_submission <- data.frame(
  method = c("Google Forms /\nonline form", "Printed and\nhanded in physically"),
  count  = c(4, 3),
  fill   = c("#b7d9b0", "#f7c79e")
)

ggplot(q7_submission, aes(x = method, y = count, fill = fill)) +
  geom_col(width = 0.45) +
  geom_text(aes(label = count), vjust = -0.4, size = 4.5) +
  scale_fill_identity() +
  scale_y_continuous(breaks = 0:5, limits = c(0, 5.3)) +
  labs(title = "How Are Reports Submitted?",
       x = "Method", y = "Number of Respondents") +
  base_style

ggsave("survey_plots/5b_report_submission.png", width = 6, height = 5, dpi = 150)
cat("Saved: 5b_report_submission.png\n")


# ── 6. Has the reporting process changed over time? (Q8) ────
#    Supports the case for change; shows users can adapt

q8 <- data.frame(
  answer = c("Yes — improved", "No change", "Yes — more\nfragmented"),
  count  = c(3, 3, 1),
  fill   = "#f7c79e"
)

ggplot(q8, aes(x = reorder(answer, -count), y = count, fill = fill)) +
  geom_col(width = 0.55) +
  geom_text(aes(label = count), vjust = -0.4, size = 4.5) +
  scale_fill_identity() +
  scale_y_continuous(breaks = 0:4, limits = c(0, 4.3)) +
  labs(title = "Has the Reporting Process Changed Over Time?",
       x = "Answer", y = "Number of Respondents") +
  base_style

ggsave("survey_plots/6_process_change_over_time.png", width = 8, height = 5, dpi = 150)
cat("Saved: 6_process_change_over_time.png\n")


cat("\nDone — all 7 plots saved to ./survey_plots/\n")
