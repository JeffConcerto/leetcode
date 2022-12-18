class Solution {
    func makeFancyString(_ s: String) -> String {
        var result = "" // Build a new string from the current string without 3 consecutive characters
        var previousChar = Character(",") // Store the previous character used for comparison to current character
        var count = 0 // Keep count of times previousChar was used consecutively

        // Iterate over the string and count consecutive characters.
        // Add character to string if count is < 3, otherwise skip:
        for char in s {
            if char == previousChar {
                count += 1
            } else {
                previousChar = char
                count = 1
            }
            
            guard count < 3 else { continue } // Character occurs three+ consecutive times, skip:
            result.append(char)
        }

        return result
    }
}
