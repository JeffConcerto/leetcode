class Solution {
    func isValid(_ s: String) -> Bool {
        if s.length == 1 { return false }
        var openChars = [Character]()
        
        for character in s {
            if character == "(" || character == "[" || character == "{" {
                openChars.append(character)
            } else {
                if openChars.isEmpty { return false }
                let lastOpenBracket = openChars.removeLast()
                switch lastOpenBracket {
                    case "(":
                    if character != ")" { return false }
                    case "[":
                    if character != "]" { return false }
                    case "{":
                    if character != "}" { return false }
                    default:
                    return false
                }
                
            }
        }
        if !openChars.isEmpty { return false }
        return true
    }
}
