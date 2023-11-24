class Solution {
    func maxCoins(_ piles: [Int]) -> Int {
        let piles = piles.sorted(by: >)
        var myPileIndex = 1
        var myCoins = 0
        var pilesPicked = 0

        while pilesPicked < piles.count/3 {
            myCoins += piles[myPileIndex]
            myPileIndex += 2
            pilesPicked += 1
        }

        return myCoins
    }
}
