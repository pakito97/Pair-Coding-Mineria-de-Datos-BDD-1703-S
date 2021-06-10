#Instanting the location of our working folder (repository)
getwd()
setwd("/Users/DELL/Desktop/Semestre9/MineriaDatos/EvaluacionU3")
getwd()

#Loading the dataset that we will use
dataset = read.csv("Social_Network_Ads.csv")
#We choose the columns that we will use
dataset = dataset[3:5]

#Factorize the dataset data
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

# Installation of the libraries that we will use in the project
#install.packages('caTools')
library(caTools)
#install.packages("e1071", dep = TRUE)
library(e1071) 
#install.packages('ElemStatLearn') #No work for me, 
# manual mode. Go to this URL https://cran.r-project.org/src/contrib/Archive/ElemStatLearn/
# Download with the latest date 2019-08-12 09:20	12M
# Then follow this page steps https://riptutorial.com/r/example/5556/install-package-from-local-source
#install.packages(file.choose(), repos=NULL)
library(ElemStatLearn)

#Separate the dataset into two training (training set) and test (test set)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#We scale the data set to standardize the data
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

# Suitable naive Bayes with training set data
classifier = naiveBayes(formula = Purchased ~ .,
                 data = training_set,
                 type = 'C-classification',
                 kernel = 'linear')
naiveBayes

#Making prediction from test results
y_pred = predict(classifier, newdata = test_set[-3])
y_pred

#Creating the confusion matrix
cm = table(test_set[, 3], y_pred)
cm

#Visualizacion de los resultados de entrenamiento
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3],
     main = 'naiveBayes (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

#Visualizacion de los resultados de prueba
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3],
     main = 'naiveBayes (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
