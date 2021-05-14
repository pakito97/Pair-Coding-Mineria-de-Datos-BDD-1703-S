# We load the data to use
data <- read.csv(file.choose())

# We verify that they are the correct data
head(data)

# We use the "ggplot2" library to plot
library(ggplot2)
# We use the "extrafont" library to change the text fonts
library(extrafont)

# Steps to import Windows fonts
#   font_import ()
#   Y
#   loadfonts (device = "win")

# We verify that the sources are loaded
windowsFonts()


# In this part a filter was made in the column "Studio"
# Studies used for graphic representation
# Buena Vista Studios, Fox, Paramount Pictures, Sony, Universal, WB

# Filter for studies
filterStudio <- data$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB")


# In this part a filter was made in the column "Genre"
# Genres used for graphic representation
# action, adventure, animation, comedy, drama

# Filter for genres
filterGenre <- data$Genre %in% c("action","adventure","animation","comedy","drama")

# Creation of a new vector with the data filtered by study and gender
dataFiltered <- data[filterStudio & filterGenre,]

# We verify that the displayed data is as expected
head(data Filtered)

# Creation of the graph

# Coordinates of the graph
graph <- ggplot(data = dataFiltered, aes(x = Genre, y = Gross...US))
# Scatter plot
graph <- graph + geom_jitter(aes(size = Budget...mill., colour = Studio))
# Box-and-whisker plot
graph <- graph + geom_boxplot(alpha = 0.8)
# Size for points on the scatter plot
graph <- graph + scale_size_continuous(range = c(2, 4))
# Changing chart labels
graph <- graph + ggtitle("Domestic Gross % by Genre") +
  xlab("Genre")+ ylab("Gross % US") + labs(size = "Budget $M")
# Style change in chart labels
graph <- graph + theme(
    axis.title.x = element_text(colour = "purple", size = 25),
    axis.title.y = element_text(colour = "purple", size=25),
    plot.title = element_text(hjust = 0.5, size = 30),
    title = element_text(face = "bold"),
    text = element_text(family = "Comic Sans MS", size = 20)
  )

# Graph display
graph
