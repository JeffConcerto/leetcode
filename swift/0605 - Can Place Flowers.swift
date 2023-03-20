class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        guard n > 0 else { return true }
        var flowerbed = flowerbed
        func leftRightIsClear(_ index: Int) -> Bool {
            guard flowerbed[index] != 1 else { return false }
            if index > 0 && flowerbed[index-1] == 1 { return false }
            if index < flowerbed.count-1 && flowerbed[index+1] == 1 { return false } 
            flowerbed[index] = 1
            return true
        }

        var newFlowers = 0
        for index in 0..<flowerbed.count {
            guard leftRightIsClear(index) else { continue }
            newFlowers += 1
            if newFlowers == n { return true }
        }
        return false
    }
}
