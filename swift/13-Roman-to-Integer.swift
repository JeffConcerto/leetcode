class Solution {
    func romanToInt(_ s: String) -> Int {
        var sum = 0
        var charArray: [String.Element] = []
        for char in s {
            charArray.append(char)
        }
        
        var index = 0
        while index < charArray.count {
            switch charArray[index] {
                case "M":
                sum += 1000
                case "D":
                sum += 500
                case "C":
                if index <= charArray.count - 2 {
                   let nextLetter = charArray[index + 1]
                    if nextLetter == "D" { sum += 400; index += 2; continue}
                    if nextLetter == "M" { sum += 900; index += 2; continue} 
                }
                
                sum += 100
                case "L":
                sum += 50
                case "X":
                  if index <= charArray.count - 2 {
                   let nextLetter = charArray[index + 1]
                    if nextLetter == "L" { sum += 40; index += 2; continue}
                    if nextLetter == "C" { sum += 90; index += 2; continue} 
                }
                
                sum += 10
                case "V":
                sum += 5
                case "I":
                 if index <= charArray.count - 2 {
                   let nextLetter = charArray[index + 1]
                    if nextLetter == "V" { sum += 4; index += 2; continue}
                    if nextLetter == "X" { sum += 9; index += 2; continue} 
                }
                sum += 1
                default:
                print("Error \(charArray[index])")
            }
            index += 1
        }
        
        return sum
    }
}
