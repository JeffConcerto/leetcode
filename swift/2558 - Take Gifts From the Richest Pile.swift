class Solution {
    func pickGifts(_ gifts: [Int], _ k: Int) -> Int {
        var gifts = gifts

        for _ in 0..<k {
            let max = getMaxIndex(gifts)
            let squareRoot = Double(gifts[max]).squareRoot()
            gifts[max] = Int(squareRoot)
        }

        return gifts.reduce(0, +)
    }

    private func getMaxIndex(_ gifts: [Int]) -> Int {
        guard gifts.count > 1 else { return 0 }
        var maxGifts = gifts[0]
        var maxIndex = 0
        for i in 1..<gifts.count {
            if gifts[i] > maxGifts {
                maxIndex = i
                maxGifts = gifts[i]
            }
        }

        return maxIndex
    }
}
