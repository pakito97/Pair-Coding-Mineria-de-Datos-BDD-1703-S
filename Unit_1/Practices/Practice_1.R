>## Return to UNIT 1
>> * [PRACTICE 1 ](https://github.com/pakito97/Pair-Coding-Mineria-de-Datos-BDD-1703-S/tree/Unit%231)

#Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev=1:

#Create an R script that will count how many of these numbers fall between -1 and 1 and divide
#by the total quantity of N

#You know that E(X) = 68.2%
#Check that Mean(Xn)->E(X) as you rerun your script while increasing N


#1 Initialize sample size(Size)
N <- 1000000

#2 Initialize counter(Counter)
counter <- 0

#3 loop for(i in rnorm(size))(Loop)
for (i in rnorm(N)) {
  #4 Check if the iterated variable falls(Numbers fall between -1 and 1)
  if (i >= -1 & i <= 1) {
    #5 Increase counter if the condition is true(Counter increment)
    counter <- counter + 1
  }
}

#6 return a result <- counter / N(Return)
result = counter / N

# Log
cat(round(result * 100, digits = 1), "%")
