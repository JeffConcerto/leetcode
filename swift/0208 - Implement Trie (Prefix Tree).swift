// Solution borrowed from UpvoteThisPls:

class Trie {
    class Node {
        var sentinel = false
        var children = [Character:Node]()
    }

    private var root = Node()

    init() {
        
    }
    
    func insert(_ word: String) {
        var node = root
        for character in word {
            node.children[character] = node.children[character] ?? Node()
            node = node.children[character]!
        }
        node.sentinel = true
    }
    
    func search(_ word: String) -> Bool {
        lookup(word).sentinel
    }
    
    func startsWith(_ prefix: String) -> Bool {
        lookup(prefix) !== root
    }

    private func lookup(_ word: String) -> Node {
        var node = root 
            for char in word {
                guard let next = node.children[char] else { return root }
                node = next
            }
            return node
    }
}

/**
 * Your Trie object will be instantiated and called as such:
 * let obj = Trie()
 * obj.insert(word)
 * let ret_2: Bool = obj.search(word)
 * let ret_3: Bool = obj.startsWith(prefix)
 */

