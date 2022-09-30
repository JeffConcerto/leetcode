class Solution {
    func findEvenNumbers(_ digits: [Int]) -> [Int] {
        var result = [Int]()
        for i in 0..<digits.count {
            if digits[i] == 0 { break }
            for j in 0..<digits.count where j != i {
                
                for k in 0..<digits.count where k != j && k != i && digits[k] % 2 == 0 {
                    let numAsString = "\(digits[i])\(digits[j])\(digits[k])"
                    result.append(Int(numAsString)!)
                }
            }
        }
        
        return result.sorted()
    }
}
