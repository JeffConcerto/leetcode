class Solution {
    func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
        // - I want the most duplicate numbers in arr:
        // - Return the total amount of unique numbers

        // - Get counter of arr:
        var map = arr.reduce(into: [:]) { $0[$1,default:0] += 1 }

        var uniqueNumbers = map.count

        let counts = map.values.sorted()
        
        var k = k

        for count in counts {
            if k - count >= 0 {
                uniqueNumbers -= 1
                k -= count
            } else {
                break
            }
        }
        return uniqueNumbers
    }
}
