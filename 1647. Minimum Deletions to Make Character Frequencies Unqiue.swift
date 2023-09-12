class Solution {
    func minDeletions(_ s: String) -> Int {
        // Map character to frequency it appears:
        var freqMap = s.reduce(into: [:]) {
            $0[$1, default:0] += 1
        }

        // Create array to store frequencies:
        var array = Array(repeating: 0, count: 1_000_00)

        var i = 0 // i willl be index into array

        // Set array with [frequency] = total times frequency apppears
        for (_, frequency) in freqMap {
            array[frequency] += 1
            i = max(i, frequency) // track max frequency so we can iterate back from
        }

        var moves = 0 // min moves needed to make good string


        // iterate from back of array:
        while i > 0 {
            // if freq is > 1 modify it:
            if array[i] > 1 {
                // keep updating array[i] while frequency is more than 1:
                while array[i] > 1 && i != 0 {
                    array[i-1] += 1 // increment frequency below current
                    array[i] -= 1 // decrement current frequency count
                    moves += 1 // mark move made
                }
            }
            
            i -= 1
        }

        return moves
    }
}
