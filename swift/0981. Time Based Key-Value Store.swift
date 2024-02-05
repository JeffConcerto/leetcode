// Keep track of timestamp in array. append each new stamp. will be in sorted order.
// then binary search to find first <= stamp.
class TimeMap {
    private var map = [String:[Int:String]]()
    private var stampMap = [String:[Int]]()
    
    init() {}
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        map[key, default: [:]][timestamp] = value
        stampMap[key, default:[]].append(timestamp)
    }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        if let submap = map[key] {
            if let string = submap[timestamp] {
                    return string
            } else if let stamp = getNearestStamp(stampMap[key]!, timestamp) {
                return submap[stamp]!
            }
        }
        
        return ""
    }

    private func getNearestStamp(_ arr: [Int], _ time: Int) -> Int? {
        if arr.isEmpty || time < arr.first! { return nil }
        var left = 0
        var right = arr.count-1

        while left <= right {
            let mid = left + (right-left)/2
            if arr[mid] < time {
                left = mid+1
            } else {
                right = mid-1
            }
        }
        return arr[left-1]
    }
}

/**
 * Your TimeMap object will be instantiated and called as such:
 * let obj = TimeMap()
 * obj.set(key, value, timestamp)
 * let ret_2: String = obj.get(key, timestamp)
 */

