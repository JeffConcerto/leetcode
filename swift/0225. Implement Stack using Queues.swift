
class MyStack {

    var queue1 = [Int]()
    var queue2 = [Int]()

    init() {}
    
    func push(_ x: Int) {
        if queue1.isEmpty {
            queue2.append(x)
        } else {
            queue1.append(x)   
        }
    }
    
    func pop() -> Int {
        if queue1.isEmpty {
            while queue2.count > 1 {
                queue1.append(queue2.removeFirst())
            }
            return queue2.removeFirst()
        } else {
            while queue1.count > 1 {
                queue2.append(queue1.removeFirst())
            }
            return queue1.removeFirst()
        }
    }
    
    func top() -> Int {
        if queue1.isEmpty {
            while queue2.count > 1 {
                queue1.append(queue2.removeFirst())
            }
            let val = queue2.first!
            queue1.append(queue2.removeFirst())
            return val
        } else {
            while queue1.count > 1 {
                queue2.append(queue1.removeFirst())
            }
            let val = queue1.first!
            queue2.append(queue1.removeFirst())
            return val
        }
    }
    
    func empty() -> Bool {
        return queue1.isEmpty && queue2.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */
