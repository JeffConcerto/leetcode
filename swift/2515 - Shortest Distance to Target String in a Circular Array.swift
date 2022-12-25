class Solution {
    func closetTarget(_ words: [String], _ target: String, _ startIndex: Int) -> Int {
        return min(shortestPath(.forwards, words, target, startIndex),shortestPath(.backwards, words, target, startIndex))
    }

    enum Movement {
        case forwards, backwards
    }

    private func shortestPath(_ movement: Movement, _ words: [String], _ target: String, _ startIndex: Int) -> Int {
        var count = 0
        var i = startIndex
        let jump = movement == .forwards ? 1 : -1

        while true {
            guard count <= words.count else { break }
            if words[i % words.count] == target { 
              return count
            }
            i += jump
            if i < 0 { i = words.count-1 }
            count += 1
        }

        return -1
    }
}
