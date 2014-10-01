# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10,001st prime number?

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

is_prime(17)
is_prime(1000)

get_prime <- function(n) {
  
  count_primes <- 0
  num <- 1
  
  while (count_primes <= n) {
    if (is_prime(num)) count_primes <- count_primes + 1
    num <- num + 1
  }
  
  return(num - 1)
}

paste('The sixth prime number is', get_prime(6))
paste('The 10,001st prime number is', get_prime(10001))
