class BrowserHistory {

    private var history = [String]()
    private var forward = [String]()

    init(_ homepage: String) {
        visit(homepage)
    }

     func visit(_ url: String) {
        history.append(url)
        forward.removeAll()
     }
  
    func back(_ steps: Int) -> String {
        for _ in 0..<min(steps, history.count-1) {
            forward.append(history.removeLast())
        }
        return history.last!
    }
    
    func forward(_ steps: Int) -> String {
        for _ in 0..<min(steps, forward.count) {
            history.append(forward.removeLast())
        }
        return history.last!
    }
}

/**
 * Your BrowserHistory object will be instantiated and called as such:
 * let obj = BrowserHistory(homepage)
 * obj.visit(url)
 * let ret_2: String = obj.back(steps)
 * let ret_3: String = obj.forward(steps)
 */
