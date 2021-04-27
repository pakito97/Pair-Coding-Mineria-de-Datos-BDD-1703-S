#Practice find 20 more functions in R and make an example of it.

#1 Time difference

time_1 <- "2019-08-25 19:09:24"    # First time object
time_2 <- "2019-08-30 23:09:24"    # Second time object
difftime(time_1, time_2)           # Difftime function


#2 Error message

tryCatch(                   # Applying tryCatch
  expr = {                  # Specifying expression
    1 + 1
    message("Everything was fine.")
  },
  error = function(e){      # Specifying error message
    message("There was an error message.")
  },
  warning = function(w){    # Specifying warning message
    message("There was a warning message.")
  },
  finally = {               # Specifying final message
    message("tryCatch is finished.")
  }
)


#3 Sort

a <- c(4, -10, 8, 0)    # Example vector
sort(a)                 # Sort function


#4 Round

x <- 1.23456789         # Example value
round(x, digits = 5)    # Round function


#5 Match

tab <- c(2, 5, 7, 5, 1)    # Example vector
match(5, tab)              # Match function


#6 Match of certain character pattern

b <- c("d", "a", "c", "abba")    #Example vector
grep("a", b)                     # Grep function


#7 Absolute

c <- c(- 5, 9, 3, -1, 2)    # Example vector
abs(c)                      # Abs function


#8 Variance

d <- c(2, 7, 7, 4, 5, 1, 3)    # Example vector
var(d)                         # Var function


#9 Evaluate

expr <- expression(3 * 5)    # Example expression
eval(expr)                   # Evaluate expression with eval function


#10 Maximum & Minimum

e <- c(4, 1, -50, 20, 8)    # Example vector
max(e)                      # Apply max to vector
min(e)                      # Apply min to vector

#11 Any (condition)

x <- runif (10, -10, 100) # 10 random numbers between -10 and 100 are generated
if (any (x <0)) cat ("In x there are negative numbers \ n") # If any numbers in x are negative

#12 Readline ("Text to display (optional)")

survey <- function () {
  r <- readline ("Do you like R? (y / n):")
  if (r == "s" || r == "S") {
    cat ("I was sure of that! \ n")
    return (invisible (0))
  } else {
    cat ("Are you sure? I think you made the wrong answer. \ nPlease try again. \ n \ n")
    poll()
  }
}


#13 sum (x) 

x <- runif (100,1,10) # 100 random numbers between 1 and 10 are generated and stored in the variable x
sum (x) # Sum of the 100 random numbers


#14 runif (n, start = 0, end = 1) 

runif (5) # 5 random numbers between 0 and 1

runif (5,1,10) # 5 random numbers between 1 and 10


#15 trunc (x)
Remove decimals from a number

trunc (1.999999)
## [1] 1


#16 length (x)

x <- 1:20 # The numbers from 1 to 20 are stored in x
length (x) # Number of elements in x


#17 sqrt (x)

sqrt (9)
## [1] 3
sqrt (2)
## [1] 1.414214
sqrt (-1)
## Warning in sqrt (-1): NaNs occurred
## [1] NaN


#18 cat ("text", x1, "text", x2, ..., "\ n")

x <- 2
and <- 4
cat (x, "raised to", y, "is", x ^ y, "\ n")


#19 names (x) <- value
Allows you to assign names to the elements of a variable

x <- c (2,4,6) # Assign 3 values to the variable x
names (x) <- c ("I", "II", "III") # Assign names to the 3 previous values
x


#20 c (a1, a2, ...)

x <- c (1,2,3)
t <- c ("one", "two", "three")
x; t
## [1] 1 2 3
## [1] "one" "two" "three"
