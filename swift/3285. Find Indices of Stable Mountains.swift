class Solution {
    func stableMountains(_ height: [Int], _ threshold: Int) -> [Int] {
        var stables = [Int]()

        for i in 1..<height.count {
            if height[i-1] > threshold {
                stables.append(i)
            }
        }

        return stables
    }
}
