# We load the data to use
data <- read.csv(file.choose())

# We verify that they are the correct data
head(data)

# We use the "ggplot2" library to plot
library(ggplot2)
# We use the "extrafont" library to change the text fonts
library(extrafont)

# Steps to import Windows fonts
# font_import ()
#   Y
# loadfonts (device = "win")

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
