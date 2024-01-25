
# create a function that adds the sum of the 2 proceeding number to the given number of time 

# create a main function

# Create a function with a for i loop 

# make a function that adds the sum of the number proccceding it in the array

n = 10
def fib(n):
    fib = [0,1]
    for i in range (n):
        next_num = fib[-1] + fib[-2]
        if next_num < n:
            fib.append(next_num)
        else:
            break
    return fib

re = fib(n)
print(re)

def is_prime(num):
    if num > 1:
        for i in range 
