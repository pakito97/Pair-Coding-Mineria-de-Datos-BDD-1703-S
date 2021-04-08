stats <- read.csv(file.choose())
stats
#Filter countries by low income
head(stats)
filter <- stats$Income.Group == "Low income" #TRUE
filter
stats[filter,]
#Filter lower-middle-income countries
head(stats)
filter <- stats$Income.Group == "Lower middle income" #TRUE
filter
stats[filter,]
#Filter countries by lower middle income
head(stats)
filter <- stats$Income.Group == "Lower middle income" #TRUE
filter
stats[filter,]
#Filter by country of Malta
head(stats)
filter <- stats$Country.Name == "Malta" #TRUE
filter
stats[filter,]
#Filter by country of Qatar
head(stats)
filter <- stats$Country.Name == "Qatar" #TRUE
filter
stats[filter,]
#Filter by country of Holland
head(stats)
filter <- stats$Country.Name == "Netherlands" #TRUE
filter
stats[filter,]
#Filter by country Norway head (stats)
filter <- stats$Country.Name == "Norway" #TRUE
filter
stats[filter,]
