
class MinStack {
    private var stack: [Int]
    private var minStack: [Int]
    init() {
        stack = []
        minStack = []
    }
    
    func push(_ val: Int) {
        stack.append(val)
        if minStack.isEmpty || minStack.last! >= val {
            minStack.append(val)
        }
    }
    
    func pop() {
        let num = stack.removeLast()
        if minStack.last! == num {
            minStack.removeLast()
        }
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        minStack.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
