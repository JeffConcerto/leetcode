class Solution {
    func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
        let arr = arr.sorted()
        let diff = abs(arr[0] - arr[1])
        
        for index in 1..<arr.count {
            if abs(arr[index-1] - arr[index]) != diff { return false}
        }
        
        return true
    }
}
