
class RandomizedSet {
    var arr = [Int]()
    var map = [Int:Int]()

    init() {   }
    
    func insert(_ val: Int) -> Bool {
        if let index = map[val] {
            return false
        } else {
            arr.append(val)
            map[val] = arr.count-1
            return true
        }
    }
    
    func remove(_ val: Int) -> Bool {
        if let index = map[val] {
            map[val] = nil
            if index != arr.count-1 {
                map[arr[arr.count-1]] = index
                 arr.swapAt(index, arr.count-1)
            }
            arr.removeLast()
            return true
        } else {
            return false
        }
    }
    
    func getRandom() -> Int {
        return arr[Int.random(in:0..<arr.count)]
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
