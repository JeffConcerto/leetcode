class ListNode {
    let value: Int
    var next: ListNode?

    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}

class MyHashSet {
    private var data:[ListNode]

    init() {
        self.data = [ListNode]()
        for i in 0..<10_000 {
            data.append(ListNode(-1))
        }
    }
    
    func add(_ key: Int) {
        print(key)
        guard !contains(key) else { return }
        let index = key % 10_000
        let newNode = ListNode(key)
        var current: ListNode? = data[index]
        while current!.next != nil {
            current = current!.next
        }
        current!.next = newNode
    }
    
    func remove(_ key: Int) {
        guard contains(key) else { return }
        let index = key % 10_000
        var current: ListNode? = data[index]
        while current!.next!.value != key {
            current = current!.next
        }            
        current!.next = current!.next!.next
    }
    
    func contains(_ key: Int) -> Bool {
        let index = key % 10_000
        var current: ListNode? = data[index]
        while current != nil {
            if current!.value == key { return true }
            current = current!.next
        }
        return false
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
