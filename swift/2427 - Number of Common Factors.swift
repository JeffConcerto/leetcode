class Solution {
    func commonFactors(_ a: Int, _ b: Int) -> Int {
        var count = 0
        let lastNum = max(a,b) / 2
        if lastNum == 0 { return 1}
        
        if a == b && a > lastNum { count += 1 }
        
        for num in 1...lastNum {
            if a % num == 0 && b % num == 0 {
                count += 1
            }
        }
        
        return count
    }
}
