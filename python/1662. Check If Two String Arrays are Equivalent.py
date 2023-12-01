class Solution:
    def arrayStringsAreEqual(self, word1: List[str], word2: List[str]) -> bool:
        r1 = 0
        r2 = 0
        c1 = 0
        c2 = 0

        while r1 < len(word1) and r2 < len(word2):
            if word1[r1][c1] != word2[r2][c2]:
                return False

            c1 += 1
            c2 += 1

            if c1 == len(word1[r1]):
                c1 = 0
                r1 += 1
            if c2 == len(word2[r2]):
                c2 = 0
                r2 += 1
    
        return r1 == len(word1) and r2 == len(word2)
