/**
 * // This is MountainArray's API interface.
 * // You should not implement it, or speculate about its implementation
 * interface MountainArray {
 *     public func get(_ index: Int) -> Int {}
 *     public func length() -> Int {}
 * }
 */

class Solution {
    func findInMountainArray(_ target: Int, _ arr: MountainArray) -> Int {
        let count = arr.length()
        var low = 0
        var high = count-1
        var mountain = -1
        
        while low <= high {
            let middle = low + (high-low)/2
            let result = arr.get(middle)
            let before =  middle > 0 ? arr.get(middle-1) : Int.min
            let after = middle < count ? arr.get(middle+1) : Int.min
            if result > before && result > after {
                mountain = middle
                break
            } else if result > before && result < after {
                // In first half of mountain:
                low = middle+1
            } else {
                // In second half of moutain:
                high = middle-1
            }
        }

        // Found Mountain Index:
        // Do BiSearch first part:
        let minIndex = binarySearch(arr,0,mountain,target)
        if minIndex != -1 { return minIndex }

        return binarySearch(arr,mountain+1,count-1,target, false)
    }

    private func binarySearch(_ arr: MountainArray, _ low: Int, _ high: Int, _ target: Int, _ isIncreasing: Bool = true) -> Int {
        var low = low
        var high = high

        while low <= high {
            let mid = low + (high-low)/2
            let result = arr.get(mid)

            if result == target {
                return mid
            } else if result < target {
                low = isIncreasing ? mid+1 : low
                high = isIncreasing ? high : mid-1
            } else {
                high = isIncreasing ? mid-1 : high
                low = isIncreasing ? low : mid+1
            }
        }

        return -1
    }
}
