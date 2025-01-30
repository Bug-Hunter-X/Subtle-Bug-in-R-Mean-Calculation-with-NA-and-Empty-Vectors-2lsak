```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vectors
  }
  sum(x) / length(x)
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
mean_result <- calculate_mean(my_vector)
print(paste("The mean is:", mean_result))

my_vector2 <- c(1, 2, 3, 4, NA)
mean_result2 <- calculate_mean(my_vector2)
print(paste("The mean is:", mean_result2))

my_vector3 <- numeric(0)
mean_result3 <- calculate_mean(my_vector3)
print(paste("The mean is:", mean_result3))
```