class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else { return [] }
        
        var numMap: [Character: [Character]] = [
            "2":["a","b","c"],
            "3":["d","e","f"], 
            "4":["g","h","i"], 
            "5":["j","k","l"], 
            "6":["m","n","o"], 
            "7":["p","q","r", "s"], 
            "8":["t","u", "v"], 
            "9":["w","x","y", "z"]
        ]
        

        for digit in digits {
            let letters = numMap[digit]!
            
            if letterCombinations.isEmpty {
                for letter in letters {
                    letterCombinations.append("\(letter)")
                }
            } 
            else {
                let combinationCount = letterCombinations.count
                
                for _ in 0..<combinationCount {
                    let string = letterCombinations.removeFirst()
                    for letter in letters {
                        letterCombinations.append("\(string)\(letter)")
                    }
                }
            }
        }
        
        return letterCombinations
    }
}
                                          
                                       
