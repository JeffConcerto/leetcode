class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var totalSum = 0
        for i in 1...arr.count {
            if i % 2 == 0 { continue }
            var tempSum = 0
            for j in 0..<arr.count {
                if j >= i { tempSum -= arr[j - i]}
                tempSum += arr[j]
                if j + 1 >= i { totalSum += tempSum}
            }
        }
        
        return totalSum
    }
}
