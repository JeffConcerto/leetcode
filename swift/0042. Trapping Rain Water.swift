class Solution {
    func trap(_ height: [Int]) -> Int {
        var height = height
        var trapped = 0

        var left = 0
        var right = 1

        while right < height.count {
            let leftWall = height[left]
            let rightWall = height[right]
            
            if leftWall == 0 {
                left += 1
                right += 1
            } else if right-left == 1 {
                if rightWall >= leftWall {
                    left = right
                    right = left+1
                } else {
                    right += 1
                }
            } else if rightWall == 0 {
                right += 1
            } else {
                for i in left+1...right-1 {
                    let water = min(leftWall, rightWall) - height[i]
                    if water <= 0 { continue }
                    height[i] = height[i] + water
                    trapped += water
                }
                if rightWall >= leftWall {
                    left = right
                    right += 1
                } else {
                    right += 1
                }
            }
        }

        return trapped
        
    }
}
