class Solution:
    def checkIfPangram(self, sentence: str) -> bool:
        characters = set()
        
        for char in sentence:
            characters.add(char)    
        
        return len(characters) == 26
