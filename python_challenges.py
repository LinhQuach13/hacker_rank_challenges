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


# An extra day is added to the calendar almost every four years as February 29, and the day is called a leap day. It corrects the calendar for the fact that our planet takes approximately 365.25 days to orbit the sun. A leap year contains a leap day.

# In the Gregorian calendar, three conditions are used to identify leap years:

# The year can be evenly divided by 4, is a leap year, unless:
# The year can be evenly divided by 100, it is NOT a leap year, unless:
# The year is also evenly divisible by 400. Then it is a leap year.
# This means that in the Gregorian calendar, the years 2000 and 2400 are leap years, while 1800, 1900, 2100, 2200, 2300 and 2500 are NOT leap years.
# Task

# Given a year, determine whether it is a leap year. If it is a leap year, return the Boolean True, otherwise return False.

# Note that the code stub provided reads from STDIN and passes arguments to the is_leap function. It is only necessary to complete the is_leap function.
def is_leap(year):
    leap = False
    
    if year % 400 == 0:
        leap = True
    elif year % 100 == 0:
        leap = False
    elif year % 4 == 0:
        leap = True
    
    return leap

year = int(input())


# Task
# The included code stub will read an integer, n , from STDIN.

# 123...n

# Without using any string methods, try to print the following:


# Note that "" represents the consecutive values in between.

# Example
# n= 5

# Print the string 12345.

# Input Format

# The first line contains an integer .

# Constraints
# 1<= n <= 150

# Output Format

# Print the list of integers from 1 through n as a string, without spaces.
if __name__ == '__main__':
    n = int(input())
    #for loop for iteration
    #stepwise with a range
for i in range(n):
    print(i+1, end="")