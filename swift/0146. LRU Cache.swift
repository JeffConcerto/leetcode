class Node {
    let key: Int
    let val: Int
    var prev: Node?
    var next: Node?

    init(_ key: Int, _ val: Int) {
        self.key = key
        self.val = val
    }
}

class LRUCache {
    private var cache = [Int:Node]()
    private let cap: Int
    private var left: Node
    private var right: Node

    init(_ capacity: Int) {
        self.cap = capacity
        self.left = Node(-1,-1)
        self.right = Node(-1,-1)
        left.next = right
        right.prev = left
    }

    private func remove(_ node: Node) {
        let prev = node.prev
        let next = node.next
        node.prev = nil
        node.next = nil
        prev?.next = next
        next?.prev = prev
        cache[node.key] = nil
    }

    private func insert(_ node:  Node) {
        let prev = right.prev
        prev?.next = node
        right.prev = node
        node.prev = prev
        node.next = right
        cache[node.key] = node
    }
  
    func get(_ key: Int) -> Int {
        guard let node = cache[key] else { return -1 }
        remove(node)
        insert(node)
        return node.val
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            remove(node)
        } else if cache.count == cap, let first = left.next {
            // Remove least used:
                remove(first)
        }
        let node = Node(key, value)
        cache[key] = node
        insert(node)
    }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */
