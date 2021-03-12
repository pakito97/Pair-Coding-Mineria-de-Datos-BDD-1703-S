# Size
N <- 1000000

# Counter
counter <- 0

# Loop
for (i in rnorm(N)) {
  # Numbers fall between -1 and 1
  if (i >= -1 & i <= 1) {
    # Counter increment
    counter <- counter + 1
  }
}

# Return
result = counter / N

# Log
cat(round(result * 100, digits = 1), "%")
