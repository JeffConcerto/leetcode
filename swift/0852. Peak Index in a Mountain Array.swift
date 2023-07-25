class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        var low = 1
        var high = arr.count-2

        while low <= high {
            let middle = low + (high-low)/2
            
            if arr[middle-1] < arr[middle] && arr[middle+1] > arr[middle] {
                low = middle+1
            } else if arr[middle] < arr[middle-1] && arr[middle] > arr[middle+1] {
                high = middle-1
            } else {
                return middle
            }
           
        }
       return low
    }
}


