```R
# This improved function correctly handles NA values and empty vectors.
calculate_mean_robust <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vectors
  } else {
    # Use mean.default to handle NA values correctly
    mean(x, na.rm = TRUE) 
  }
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
mean_result <- calculate_mean_robust(my_vector)
print(paste("The mean is:", mean_result))

my_vector2 <- c(1, 2, 3, 4, NA)
mean_result2 <- calculate_mean_robust(my_vector2)
print(paste("The mean is:", mean_result2))

my_vector3 <- numeric(0)
mean_result3 <- calculate_mean_robust(my_vector3)
print(paste("The mean is:", mean_result3))
```