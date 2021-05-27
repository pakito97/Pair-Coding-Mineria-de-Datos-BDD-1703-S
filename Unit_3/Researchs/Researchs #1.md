# Pair-Coding-Data-Mining-BDD-1703-S

![Logos (Encabezado)](https://user-images.githubusercontent.com/38358997/111401323-4c5f8480-8686-11eb-8532-0679458bb51a.png)

### TECNOLOGICO NACIONAL DE MEXICO

### INSTITUTO TECNOLOGICO DE TIJUANA

**ACADEMIC SUBDIRECTORATE:** Systems and Computing Department

**CAREERS:** Computer Systems Engineering & Information Technology and Communications Engineering

**SEMESTER:** February-July 2021

**COURSE:** Data Mining

**SERIE:** BDD-1703

**research

**What is a confusion matrix?

**TEACHER:** Jose Christian Romero Hernandez

**NAME AND CONTROL NUMBER OF MEMBERS:**

Loaiza Chavez Ramon 17212921

Rodriguez Medrano Marco Antonio 17210635

***What is a Confusion Matrix?
The confusion matrix is a fundamental tool when evaluating the performance of an algorithm
classification, as it will give a better idea of how the algorithm is being classified, from
of a count of the successes and errors of each of the classes in the classification. So you can
check if the algorithm is misclassifying classes and to what extent.

***Functioning of the matrix and confusion
The confusion matrix is a fundamental tool when evaluating the performance of a classification
algorithm, since it will give a better idea of how said algorithm is being classified, from a 
count of the successes and errors of each of the classes in the classification. This way you 
can check if the algorithm is misclassifying the classes and to what extent.
The performance of a system is usually evaluated using the data in such a matrix.
The following table shows the confusion matrix for a classifier in two classes:

|                           Sorter                        |
|             |              |            |               |
|             |              |  negative  |    positive   |
| real values |    negative  |      a     |        b      |
|             |    positive  |      c     |        d      |

In said table:
-a is the number of correct predictions that a case is negative.
-b is the number of incorrect predictions that a case is positive, that is, 
the prediction is positive when the value really should be negative. These cases are also called type I errors.
-c is the number of incorrect predictions that a case is negative, that is, 
the prediction is negative when the value really should be positive. These cases are also called type II errors.
-d is the number of correct predictions that a case is positive.
Several standard terms have been defined to measure the performance of a classifier in any branch where classification systems are applied:

Accuracy is the proportion of the total number of predictions that were correct.

The True Positive Rate (TPrate), sometimes also called Recall, is the proportion of positive cases that were correctly identified.

The False Positive Rate (FPrate) is the proportion of negative cases that have been incorrectly classified as positive.

The True Negative Rate (TNrate) is the proportion of negative cases that have been correctly classified.

The False Negative Rate (FNrate) is the proportion of positive cases that were incorrectly classified as negative.

Precision (P, also Precision) is the proportion of positive predicted cases that were correct.

The following terms are also frequently used:
Sensitivity (Se, from the English Sensitivity) as a synonym for TPrate because it is the capacity of the classifier 
to be “sensitive” to positive cases. Notice that 1-Se = FNrate Specificity (Sp, from English Specificity) as a 
synonym for TNrate, because it can give a measure of the specificity of the test to mark positive cases. Notice 
that 1-Sp = FPrate. If a classifier can vary certain parameters, it can be possible to increase the TP at the cost
of increasing the FP or vice versa. In other words, high sensitivity with high specificity (or equivalently low FPrate) is desired.
