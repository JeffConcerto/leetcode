class Solution {
    let map = [
        2:["a", "b", "c"],
        3:["d", "e", "f"],
        4:["g", "h", "i"],
        5:["j", "k", "l"],
        6:["m", "n", "o"],
        7:["p", "q", "r", "s"],
        8:["t", "u", "v"],
        9:["w", "x", "y", "z"],
        ]
    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else { return [] }
        let digits = Array(digits)
        var result = [String]()

        func dfs(_ i: Int, _ string: String) {
            if i == digits.count {
                result.append(string)
            } else {
                if let letters = map[digits[i].wholeNumberValue!] {
                    for letter in letters {
                        dfs(i+1, string + String(letter))
                    }
                }
            }
        }

        dfs(0, "")
        return result
        
    }
}
