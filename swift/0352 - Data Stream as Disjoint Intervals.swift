class SummaryRanges {
    private var numsSet = Set<Int>()
    private var nums = [Int]()

    init() {
        
    }
    
    func addNum(_ value: Int) {
        guard !numsSet.contains(value) else { return }
        nums.append(value)
        nums.sort()
        numsSet.insert(value)
    }
    
    func getIntervals() -> [[Int]] {
        guard !nums.isEmpty else { return [[]] }
        var result = [[Int]]()
        var tempInterval = [nums[0], nums[0]]
        for i in 1..<nums.count {
            let previous = tempInterval.last!
            let current = nums[i]
            if current - 1 == previous {
                tempInterval[1] = current
            } else {
                result.append(tempInterval)
                tempInterval = [current, current]
            }
        }
        result.append(tempInterval)
        return result
    }
}

/**
 * Your SummaryRanges object will be instantiated and called as such:
 * let obj = SummaryRanges()
 * obj.addNum(value)
 * let ret_2: [[Int]] = obj.getIntervals()
 */
