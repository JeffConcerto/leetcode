class Solution {
    func findLongestChain(_ pairs: [[Int]]) -> Int {
        guard pairs.count > 1 else { return 1 }

        // Sort the pairs by their end value (pair[1]) in increasing order (i.e., smallest to largest):
        let pairs = pairs.sorted { $0[1] < $1[1] }

        var count = 0 // will track largest chain that can be made
        var end = Int.min // tracks the current end value to compare to next pair

        // Iterate over all the pairs:
        for pair in pairs {
            let start = pair[0]
            // Check if the start of the new pair comes after the end of the chain:
            if start > end {
                // If so, add one to the chain:
                count += 1
                // And set the new end of the chain to be the current pair's end value:
                end = pair[1]
            } else {
                /* If start comes before the end of the chain, 
                    do not link to chain, instead modify the end of the chain
                    to be the smaller of the current pair and the current end.
                    This ensures that we maintain the length of the chain, but optimize it's
                    length to ensure more pairs can be added.
                */
                end = min(pair[1],end)
            } 
        }

        return count
    }
}
