# Method 1:
class Solution:
    import functools

    def sumBase(self, n: int, k: int) -> int:
        digits = []
     
        while n > 0:
            digits.append(n%k)
            n //= k
        
        return functools.reduce(operator.add, digits)

# Method 2:      
class Solution:
    def sumBase(self, n: int, k: int) -> int:
        sum = 0
     
        while n > 0:
            sum += (n%k)
            n //= k
        
        return sum
      
      
