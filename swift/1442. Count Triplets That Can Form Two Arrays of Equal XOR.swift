class Solution {
    func countTriplets(_ arr: [Int]) -> Int {
        var set = Set<[Int]>()

        for i in 0..<arr.count-1 {
            for j in i..<arr.count {
                for k in j..<arr.count {
                    if i == j { continue }
                    var iSum = 0
                    for index in i..<j {
                        iSum ^= arr[index]
                    }
                    var jSum = 0
                    for index in j...k {
                        jSum ^= arr[index]
                    }
                    if iSum == jSum {
                        set.insert([i,j,k])
                    }
                }
            }
        }
        
        return set.count
    }
}
