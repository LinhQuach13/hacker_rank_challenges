# Task 
# print 'Hello World'
# Input Format
# You do not need to read any input in this challenge.
#Output Format
# Print Hello, World! to stdout.
print("Hello, World!")




# Task 
# Given an integer, , perform the following conditional actions:
# If  is odd, print Weird
# If  is even and in the inclusive range of  to , print Not Weird
# If  is even and in the inclusive range of  to , print Weird
# If  is even and greater than , print Not Weird

# Input Format
# A single line containing a positive integer, .

# Constraints
# 1 <= n <= 100

# Output Format
# Print Weird if the number is weird; otherwise, print Not Weird.
import math
import os
import random
import re
import sys



if __name__ == '__main__':
    n = int(input().strip())
if n % 2 != 0:
    print("Weird")
elif n % 2 == 0 and 2 <= n <= 5:
    print("Not Weird")
elif n % 2 == 0 and 6 <= n <= 20:
    print("Weird")
else:
    print("Not Weird")


# Task
# The provided code stub reads two integers from STDIN, a and b. Add code to print three lines where:

# The first line contains the sum of the two numbers.
# The second line contains the difference of the two numbers (first - second).
# The third line contains the product of the two numbers.

if __name__ == '__main__':
    a = int(input())
    b = int(input())
print (a + b)
print (a - b)
print (a * b)


# Task
# The provided code stub reads two integers,  and , from STDIN.

# Add logic to print two lines. The first line should contain the result of integer division,  a//b . The second line should contain the result of float division, a/b .

# No rounding or formatting is necessary.
if __name__ == '__main__':
    a = int(input())
    b = int(input())
print(a//b)
print (float(a/b))


# Task
# The provided code stub reads and integer, , from STDIN. For all non-negative integers i < n , print i^2.
if __name__ == '__main__':
    n = int(input())
    for i in range(n):
        print (i**2)