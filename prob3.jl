# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

function lpfun(x)
  lpf = 2
  while (x > lpf)
    if (x % lpf == 0)
      x = x/lpf
      lpf = 2
    else
      lpf += 1
    end
  end
  lpf
end

function main(bigint)
  ans = lpfun(bigint)
  println("The largest prime factor of $(bigint) is $(ans)")
end

main(600851475143)
