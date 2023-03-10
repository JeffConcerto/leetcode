class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
     func canEat(_ speed: Int) -> Bool {
         var totalTime = 0
         for pile in piles {
             totalTime += pile / speed
             totalTime += pile % speed > 0 ? 1 : 0
            if totalTime > h { return false }
             }
            return true
         }

     var low = 1
     var high = piles.max()!
     var minSpeed = Int.max

     while low <= high {
         let mid = low + (high-low)/2
         if canEat(mid) {
             minSpeed = mid
             high = mid-1
         } else {
             low = mid + 1
         }
     }

     return minSpeed
    }
}
