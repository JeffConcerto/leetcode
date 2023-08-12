class Solution {
    func finalString(_ s: String) -> String {
        var result = ""
        for char in s {
            if char == "i" {
                result = String(result.reversed())
            } else {
                result.append(char)
            }
        }
        return result
    }
}
