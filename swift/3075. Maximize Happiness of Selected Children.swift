class Solution {
    func maximumHappinessSum(_ happiness: [Int], _ k: Int) -> Int {
        let happiness = happiness.sorted(by: >)
        var sum = 0
        for i in 0..<k {
            sum += max(0,happiness[i] - i)
        }

        return sum
    }
}
