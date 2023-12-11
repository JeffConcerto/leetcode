class Solution {
    func findSpecialInteger(_ arr: [Int]) -> Int {
        var count = 1

        for i in 1..<arr.count {
            if arr[i] == arr[i-1] {
                count += 1
                if count > arr.count/4 {
                    return arr[i]
                }
            } else {
                count = 1
            }
        }

        return arr[arr.count-1]
    }
}
