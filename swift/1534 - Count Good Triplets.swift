class Solution {
    func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {

        var triplets = 0
        
        for indexI in 0..<arr.count-2 {
            for indexJ in indexI + 1..<arr.count-1 {
                for indexK in indexJ + 1..<arr.count {
                    if abs(arr[indexI] - arr[indexJ]) <= a &&
                    abs(arr[indexJ] - arr[indexK]) <= b &&
                    abs(arr[indexI] - arr[indexK]) <= c {
                        triplets += 1
                    }
                 }
            }
        }
        
        return triplets
    }
}
