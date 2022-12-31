class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        let jewels = Array(jewels)
        let jewelHash : [Character: Bool] = jewels.reduce(into: [:]) { hashTable, character in 
            hashTable[character] = true
        }

        var jewelCount = 0

        for char in stones {
            guard jewelHash[char] != nil else { continue }
            jewelCount += 1
        }

        return jewelCount
    }
}
