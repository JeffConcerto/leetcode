class LRUCache {
    private var cache = [Int: Node]()
    private var count = 0
    private let capacity: Int
    private var head: Node?
    private var tail: Node?


    init(_ capacity: Int) {
        self.capacity = capacity   
    }

    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            node.value = value
            moveToRecent(node)
        } else {
            // Node Does not exist:
            // Create Node:
            var node = Node(key: key, value: value)
            // Check capacity:
            if count == capacity {
                // Remove least used Node:
                evict()
            }
            cache[key] = node
            moveToRecent(node)
            count += 1
        }
    }
    
    func get(_ key: Int) -> Int {
        if let node = cache[key] {
            moveToRecent(node)
            return node.value
        } else {
            return -1
        }
    }

    // Double List Functions:
    private func moveToRecent(_ node: Node) {
        // Check if Node is head:
        guard node !== head else { return }

        if head == nil {
            // If has no head/tail:
            head = node
            tail = node
        }  else if node === tail {
            // Is tail:
            // Set New Tail:
            var newTail = tail!.next
            newTail!.prev = nil
            tail = newTail

            // Set node as Head:
            node.prev = head
            node.next = nil
            head!.next = node
            head = node
        } else {
            // Remove node from link:
            if node.next != nil {
                var child = node.next
                var parent = node.prev
                parent!.next = child
                child!.prev = parent
            }

            node.prev = head
            node.next = nil
            head!.next = node
            head = node
        }
    }

    private func evict() {
        guard tail != nil else {return }
        let key = tail!.key
        cache[key] = nil
        if tail !== head {
            tail!.next!.prev = nil
            tail = tail!.next
        } else {
            tail = nil
            head = nil
        }

        count -= 1
    }

    
    class Node {
    var key: Int
    var value: Int
    var next: Node?
    var prev: Node?

    init(key: Int, value: Int) {
        self.key = key
        self.value = value
    }
}
    
}



/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */

