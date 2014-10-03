# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?


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


num = 600851475143
maxprime = 1

for n = 1:sqrt(num)
    if is_prime(n)
        if n > maxprime
            maxprime = n
        end
    end
end

maxprime

