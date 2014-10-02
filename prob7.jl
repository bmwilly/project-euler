# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10,001st prime number?


function is_prime(n::Int64)

    # check for 1, 2, 3
    if n <= 3
        return true
    end

    # check if number is even
    if n % 2 == 0
        return false
    end

    # initialize counter variable
    i = 3

    # only need to check til sqrt(n)
    while i <= sqrt(n)

        # check for divisibility
        if n % i == 0
            return false
        end

        i += 2
    end

    # otherwise the number is prime
    return true
end

function is_divisible(n, i)
    return n % i == 0
end


function get_prime(n::Int64)

    count_primes = 0 # initialize count of primes
    num = 1 # initialize integer to check if prime

    # loop until we find the n'th prime
    while count_primes <= n

        # check if we found a prime number
        if is_prime(num)
            count_primes += 1
        end

        num += 1
    end

    return num - 1
end

println("The sixth prime number is $(get_prime(6))")
println("The 10,001st prime number is $(get_prime(10001))")
