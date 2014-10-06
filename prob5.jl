#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

notfound = true
n = 0

while notfound

    countdivisible = 0
    n += 1

    for x = 1:20
        if n % x == 0
            countdivisible += 1
        end
    end

    if countdivisible == 20
        notfound = false
    end
end

println("The smallest positive number that is evenly divisible by all of the numbers from 1 to 20 is $(n)")
