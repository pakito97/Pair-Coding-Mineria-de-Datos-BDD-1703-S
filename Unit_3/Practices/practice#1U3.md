# Pair-Coding-Data-Mining-BDD-1703-S

![Logos (Encabezado)](https://user-images.githubusercontent.com/38358997/111401323-4c5f8480-8686-11eb-8532-0679458bb51a.png)

### TECNOLOGICO NACIONAL DE MEXICO

### INSTITUTO TECNOLOGICO DE TIJUANA

**ACADEMIC SUBDIRECTORATE:** Systems and Computing Department

**CAREERS:** Computer Systems Engineering & Information Technology and Communications Engineering

**SEMESTER:** February-July 2021

**COURSE:** Data Mining

**SERIE:** BDD-1703

**NAME OF THE JOB: **Practice 1

**TEACHER:** Jose Christian Romero Hernandez

**NAME AND CONTROL NUMBER OF MEMBERS:**

Rodriguez Medrano Marco Antonio 17210635

Instructions
the teacher asked the student to document the following code promoted by teacher José Christian Romero Hernández.
first to work with this part of the code, previously we worked with the data from a .csv file which in total are
400 data and then the data was divided into 100 test and 300 training data and we worked with those test data and
training to the part that I will be documenting. The ElemStatLearn library is a library created by the authors of the
following book: https://web.stanford.edu/~hastie/ElemStatLearn/printings/ESLII_print12_toc.pdf. To solve this kind of
logistic regression problems. Then with the command "set = training_set" we will be indicating that we will work with the
training data only, with the following commands X1 and X2 we generate two separate sequences using for the variable
X1 column 1 and column 2 for variable X2. and then with the command grid_set = expand.grid (X1, X2) we will join
the two sequences in a single table and with the colnames command we give the names to the columns of the grid_set table.
once this is done we will be ready to make the classificatory response type prediction with the data from the grid_set and
They will be stored in the variable prob_set.

library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

Well now with the command y_grid = ifelse (prob_set> 0.5, 1, 0) we will be classifying all the data
stored in prob_set depending on whether the value is greater than 0.5, it will be assigned the value of 1, otherwise it will be assigned 0.
then with the plot command we will show a dispersion of points with the limits of the variables X1 and X2. below is the result.
Now with the command contour (X1, X2, matrix (as.numeric (y_grid), length (X1), length (X2)), add = TRUE) we will create a vertical line that represents
the matrix of the data of the variables X1 and X2 as shown below and to finish we will format the dispersion of points to
that it is observed which set of points belongs to whom.

The modification will be made using the following commands and we can see the two regions and the points that are within said regions, 
as well as clearly see who they belong to.
points (grid_set, pch = '.', col = ifelse (y_grid == 1, 'springgreen3', 'tomato'))
points (set, pch = 21, bg = ifelse (set [, 3] == 1, 'green4', 'red3'))


For the rest of the code, the same steps mentioned above will be followed but with the difference that now we would work with the test data.
# Visualising the Test set results
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
Resultados del código que utiliza test_set

To observe the plots enter this link:
https://docs.google.com/document/d/1q2Q7GRj-STZ3tuURolGe7A0Vmo_6xuu0y3YoL8QDNNQ/edit

