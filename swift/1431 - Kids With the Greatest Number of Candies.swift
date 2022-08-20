class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let maxCandies = candies.max()!
        
        var result = [Bool]()
        
        for kid in candies {
             result.append(kid + extraCandies >= maxCandies)
        }
        
        return result
    }
}

// Method 2

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let maxCandies = candies.max()!
        
        return candies.map {$0 + extraCandies >= maxCandies }      
    }
}
