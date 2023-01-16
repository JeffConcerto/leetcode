/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var start = 1
        var end = n

        while start < end {
            let middle = (start + end) / 2

            if isBadVersion(middle) {
                end = middle
            } else {
                start = middle + 1
            }
        }

        return start
    }
}
