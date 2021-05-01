#pen the dataset
coin_bitcoin <- read.csv(file.choose())
#we see the head of the dataset
head(coin_bitcoin)
#we see the data format to see with which we can graph
str(coin_bitcoin)
#we see the summary of the dataset
summary(coin_bitcoin)

#we extract the years from the date column
coin_bitcoin$Date <- as.Date(coin_bitcoin$Date)

#convert years to numeric format
coin_bitcoin$Year <- as.numeric(format(coin_bitcoin$Date, "%Y"))
head(coin_bitcoin)


#we load the ggplot2 library
library(ggplot2)

#we create the point scatter plot
ggplot(data=coin_bitcoin, aes(x=Date, y=Open))

ggplot(coin_bitcoin, aes(x=Date, y=Open, color=Name, size=Volume)) + 
  geom_point()

### grafica en facetass

#### Graph with theme and histogram  ###

# preparing the plot
ggplot(coin_bitcoin, aes(x=Year))

# saving the previous plot in the variable q, then the histogram is added to it and it will be saved in a
q <- ggplot(coin_bitcoin, aes(x=Year))
a <- q + geom_histogram(binwidth = 1.5, aes(fill=Name), color="Blue")

# we look at the graph
a

# the title and theme are added to the graph
a + ggtitle("Compra de bitcoins") + 
  theme(legend.title = element_text(size = 14),
        legend.position = c(1,1),
        legend.justification = c(1,1),)
