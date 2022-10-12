class Solution {
    func strongPasswordCheckerII(_ password: String) -> Bool {
        guard password.count >= 8 else { return false }
        
        let password: [Character] = Array(password)
        
        var hasLower = false
        var hasUpper = false
        var hasDigit = false
        var hasSpecial = false
        var lastChar: Character = "."
        
        for char in password {
            if lastChar == char { return false }
            if char.isUppercase {
                hasUpper = true 
            } else if char.isLowercase {
                hasLower = true
            } else if char.isNumber {
                hasDigit = true
            } else if "!@#$%^&*()-+".contains(char) {
                hasSpecial = true
            }
            
            lastChar = char
        }
        
        return hasLower && hasUpper && hasDigit && hasSpecial
    }
}
