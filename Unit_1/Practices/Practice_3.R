# Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

# Profit
profit <- revenue - expenses
profit

# Tax
tax <- round(0.30 * profit, 2)
tax

# Profit After Tax
profit.after.tax <- profit - tax
profit.after.tax

# Profit Margin
profit.margin <- round(profit.after.tax / revenue, 2) * 100
profit.margin

# Mean Profit
mean_pat <- mean(profit.after.tax)
mean_pat

#Months With Above-Mean Profit After Tax
good.months <- profit.after.tax > mean_pat
good.months

#Months With Below-Mean Profit After Tax
bad.months <- !good.months
bad.months
