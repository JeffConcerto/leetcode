class Solution {
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        let set = Set(arr)
        
        var count = 0
        var currentNumber = 1
        
        while count != k {
            if !set.contains(currentNumber) {
                count += 1
            }
            currentNumber += 1
        }
        
        return currentNumber - 1
    }
}
