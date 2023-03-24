class Solution {
    func distMoney(_ money: Int, _ children: Int) -> Int {
        guard money >= children else { return -1 }
        var moneyLeft = money - children // 17
        var maxCount = 0
        for index in 0..<children {
            if moneyLeft >= 7 {
                moneyLeft -= 7
                maxCount += 1
            } else {
                if moneyLeft == 3 && index == children-1 {
                    maxCount -= 1
                }
                break
            }
        }

        if maxCount == children && moneyLeft > 0 {
            maxCount -= 1
        } 
        return maxCount
    }
}
