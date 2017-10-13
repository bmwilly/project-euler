"""
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
"""

import itertools


if __name__ == "__main__":
    max_c = 998
    ns = range(1, max_c)
    abc = itertools.product(ns, ns, ns)

    for a, b, c in abc:
        if (a ** 2 + b ** 2 == c ** 2) and (a + b + c == 1000):
            print a * b * c
            break
