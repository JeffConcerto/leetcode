class NestedIterator {
    private var list: [Int] = []
    private var index = 0

    init(_ nestedList: [NestedInteger]) {
        list = breakdownList(nestedList)
    }

    private func breakdownList(_ list: [NestedInteger]) -> [Int] {
        var flat = [Int]()
        for nested in list {
            if nested.isInteger() {
                flat.append(nested.getInteger())
            } else {
                flat += breakdownList(nested.getList())
            }
        }
        return flat
    }
    
    func next() -> Int {
        index += 1
        return list[index-1]
    }
    
    func hasNext() -> Bool {
        return index < list.count
    }
}
