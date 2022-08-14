class Solution {
    func sortByBits(_ arr: [Int]) -> [Int] {
        var countMap: [[Int]] = [[Int]](repeating: [], count: 64)

        for num in arr {
            var number = num 
            var count = 0
            while number > 0 {
                if number & 1 == 1 { count += 1}
                number = number >> 1
            }
            countMap[count].append(num)
        }
        
        var results = [Int]()
        for array in countMap { 
            for num in array.sorted() {
                results.append(num)
            }
        }
        
        return results
    }
}
