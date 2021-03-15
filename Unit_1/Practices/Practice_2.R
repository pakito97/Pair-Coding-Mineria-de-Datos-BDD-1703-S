# Time difference

time_1 <- "2019-08-25 19:09:24"    # First time object
time_2 <- "2019-08-30 23:09:24"    # Second time object
difftime(time_1, time_2)           # Difftime function


# Error message

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


# Sort

a <- c(4, -10, 8, 0)    # Example vector
sort(a)                 # Sort function


# Round

x <- 1.23456789         # Example value
round(x, digits = 5)    # Round function


# Match

tab <- c(2, 5, 7, 5, 1)    # Example vector
match(5, tab)              # Match function


# Match of certain character pattern

b <- c("d", "a", "c", "abba")    #Example vector
grep("a", b)                     # Grep function


# Absolute

c <- c(- 5, 9, 3, -1, 2)    # Example vector
abs(c)                      # Abs function


# Variance

d <- c(2, 7, 7, 4, 5, 1, 3)    # Example vector
var(d)                         # Var function


# Evaluate

expr <- expression(3 * 5)    # Example expression
eval(expr)                   # Evaluate expression with eval function


# Maximum & Minimum

e <- c(4, 1, -50, 20, 8)    # Example vector
max(e)                      # Apply max to vector
min(e)                      # Apply mic to vector
