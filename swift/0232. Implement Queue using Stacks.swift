
class MyQueue {
    private var main = [Int]()
    private var backup = [Int]()
    init() {}
    
    func push(_ x: Int) {
        main.append(x)
    }
    
    func pop() -> Int {
        peek()
        return backup.removeLast()
    }
    
    func peek() -> Int {
       if backup.isEmpty {
            while !main.isEmpty {
                backup.append(main.removeLast())
            }
        }

        return backup.last!
    }
    
    func empty() -> Bool {
        main.isEmpty && backup.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
