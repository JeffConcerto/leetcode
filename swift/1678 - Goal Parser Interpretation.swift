// Method 1:
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

// Method 2:
class Solution {
    func interpret(_ command: String) -> String {
        var command = Array(command)
        var result = ""
        var index = 0
    
        while index < command.count {
            if command[index] == "G" {
                result.append("G")
                index += 1
            } else {
                if command[index+1] == ")" {
                    result.append("o")
                    index += 2
                } else {
                    result.append("al")
                    index += 4
                }
            }
        }

        return result
    }
}
