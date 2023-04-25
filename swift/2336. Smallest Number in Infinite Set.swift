class SmallestInfiniteSet {
    private var smallestNumber = 1
    private var addedNums = [Int]()
    private var addedNumsSet = Set<Int>()

    init() {}
    
    func popSmallest() -> Int {
        if addedNums.isEmpty || addedNums.last! > smallestNumber {
             let smallest = smallestNumber
            smallestNumber += 1
            return smallest
        } else {
            let smallest = addedNums.last!
            addedNums.removeLast()
            addedNumsSet.remove(smallest)
            return smallest
        }
    }
    
    func addBack(_ num: Int) {
        guard num < smallestNumber else { return }
        if !addedNumsSet.contains(num) {
            addedNums.append(num)
            addedNumsSet.insert(num)
            addedNums.sort(by:>)
        }
    }
}

/**
 * Your SmallestInfiniteSet object will be instantiated and called as such:
 * let obj = SmallestInfiniteSet()
 * let ret_1: Int = obj.popSmallest()
 * obj.addBack(num)
 */
