class Solution {
    func isNStraightHand(_ hand: [Int], _ groupSize: Int) -> Bool {
        let hand = hand.sorted()
        var match = Array(repeating: false, count: hand.count)
        print(hand)
        var start = 0

        while start < hand.count {
            match[start] = true
            var consec = 1
            var current = hand[start]
            var i = start+1
            while consec < groupSize {
                while i < hand.count && (hand[i] == current || match[i]) {
                    i += 1
                }
                if i == hand.count { return false }
                if hand[i] - current != 1 { return false }
                current = hand[i]
                match[i] = true
                consec += 1
                i += 1
            }
            while start < hand.count && match[start] {
                start += 1
            }
        }

        return true

    }
}
