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


### Facet Plot ###

# Creation of vectors to select only the data with which the Bitcoin value is opened and closed
open_bitcoin <- select(coin_bitcoin, Open, Date)
close_bitcoin <- select(coin_bitcoin, Close, Date)

# Creation of vectors to select only the data with which the Bitcoin value is opened and closed
open <- open_bitcoin %>% rename(Value = Open)
close <- close_bitcoin %>% rename(Value = Close)

# A column was added to each vector to differentiate which data represents the open value and the closed value
open$Type <- rep('Open',nrow(open))
close$Type <- rep('Close',nrow(close))

# A column with the year was added to each vector to achieve a better representation in the graph
open$Date <- as.Date(open$Date)
open$Year <- as.numeric(format(open$Date, "%Y"))
close$Date <- as.Date(close$Date)
close$Year <- as.numeric(format(close$Date, "%Y"))

# Visualization of the first data of each vector to ensure that the expected data is displayed
head(open)
head(close)

# Create the facet chart
facet_open_close <- ggplot() + ggtitle('Open and Close value of Bitcoin plotted on log2 scale') + xlab('Years') + ylab('Value') +
  geom_point(data = open, aes(x = Date, y = Value), color = "blue", size=0.5) +
  geom_point(data = close, aes(x = Date, y = Value), color = "red", size=0.5) +
  facet_grid(Type~.) +
  scale_y_continuous(trans = 'log2')

# Viewing the facet chart
facet_open_close


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
