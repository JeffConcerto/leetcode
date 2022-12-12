class Solution:
    def fizzBuzz(self, n: int) -> List[str]:
        answer = []

        for i in range(1,n+1):
            print(i)
            if i % 5 == 0:
                if i % 3 == 0:
                    answer.append("FizzBuzz")
                else:
                    answer.append("Buzz")
            elif i % 3 == 0:
                answer.append("Fizz")
            else:
                answer.append(str(i))
    
        return answer
