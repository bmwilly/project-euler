#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

(n1, n2) = (100, 100)
maxprod = n1 * n2

for i = 100:999
    for j = 100:999
        prod = i * j
        prodstring = string(prod)
        if (prodstring == reverse(prodstring)) & (prod > maxprod)
            maxprod = prod
            (n1, n2) = (i, j)
        end
    end
end

println("The largest palindrome made from the product of two 3-digit numbers is $(maxprod) = $(n1) * $(n2)")
