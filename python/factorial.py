import sys

def factorial(x):
    if x < 0:
        return 0
    fact = 1
    while x > 1:
        fact *= x
        x -= 1
    return fact

if __name__ == "__main__":
    if len(sys.argv) <= 1:
        sys.exit(0)
    input_value = int(sys.argv[1])
    result = factorial(input_value)
    print(result)
