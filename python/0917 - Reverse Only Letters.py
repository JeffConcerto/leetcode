class Solution:
    def reverseOnlyLetters(self, s: str) -> str:
        letterArray = []

        for char in s:
            if char.isalpha():
                letterArray.append(char)
        
        result = ""

        for char in s:
            if char.isalpha():
                result += letterArray.pop()
            else:
                result += char

        return result
