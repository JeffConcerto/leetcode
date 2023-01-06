class Solution {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        var costs = costs.sorted()

        var coins = coins
        var index = 0
        while coins > 0 && index < costs.count {
            coins -= costs[index]
            index += 1
        }

        return coins >= 0 ? index : index - 1
    }
}
