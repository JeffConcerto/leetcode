class Solution {
    func interpret(_ command: String) -> String {
        var result = ""
        var currentString = ""
        
        for char in command {
            currentString.append(char)
            switch currentString {
                case "G":
                result.append("G")
                currentString = ""
                case "()":
                result.append("o")
                currentString = ""
                case "(al)":
                result.append("al")
                currentString = ""
                default:
                break
            }
        }
        
        return result
    }
}
