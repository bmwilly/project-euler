
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

is_prime <- function(n) {
  
  if (n <= 3) return(TRUE)
  
  if (n %% 2 == 0) return(FALSE)
  
  i <- 3
  while (i <= sqrt(n)) {
    if (n %% i == 0) return(FALSE)
    i <- i + 2
  }
  
  return(TRUE)
}

num <- 600851475143

maxprime <- 1
for (n in 1:num) {
  if (is_prime(n)) {
    if (n > maxprime) {
      maxprime <- n
    }
  }
}