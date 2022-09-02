class Solution {
    func decrypt(_ code: [Int], _ k: Int) -> [Int] {
        guard k != 0 else { return Array(repeating: 0, count: code.count)  }
        var result = [Int]()
        let n = code.count
        if k > 0 {
            for i in 0..<code.count {
                var sum = 0
                for j in i + 1...i + k {
                    sum += code[j % n]
                }
                result.append(sum)
            }
        } else {
            for i in 0..<code.count {
                var sum = 0
                let start = (n + k + i) % n
                for j in start..<start - k {
                    sum += code[j % n]
                }
                result.append(sum)
            }
        }
        
        return result
        
        
        
        
    }
}
