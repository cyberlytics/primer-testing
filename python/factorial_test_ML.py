import unittest
from parameterized import parameterized
from factorial import factorial  # Import the factorial function

class TestFactorialML(unittest.TestCase):

    def test_factorial_zero(self):
        self.assertEqual(factorial(0), 1)

    @parameterized.expand([(-1,), (-1000,)])
    def test_factorial_negative(self, x):
        self.assertEqual(factorial(x), 0)

    @parameterized.expand([
        (1, 1),
        (2, 2),
        (3, 6)
    ])
    def test_factorial_positive(self, x, result):
        self.assertEqual(factorial(x), result)

if __name__ == '__main__':
    unittest.main()
