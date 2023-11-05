class Solution {
    func getWinner(_ arr: [Int], _ k: Int) -> Int {
        var wins = 0
        var maxi = arr[0]

        for i in 1..<arr.count {
            if arr[i] > maxi {
                maxi = arr[i]
                wins = 1
            } else {
                wins += 1
            }
            if wins == k { break }
        }

        return maxi
    }
}

