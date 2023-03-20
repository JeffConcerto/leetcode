
class WordDictionary {
    class TrieNode {
        var isWord = false
        var children = [Character: TrieNode]()
    }

    private var root = TrieNode()

    init() {}
    
    func addWord(_ word: String) {
        var node = root
        for char in word {
            if node.children[char] == nil {
                node.children[char] = TrieNode()
            }
            node = node.children[char]!
        }
        node.isWord = true
    }
    
    func search(_ word: String) -> Bool {
        return findWord(0, Array(word), root)
    }

    private func findWord(_ index: Int, _ word: [Character], _ node: TrieNode) -> Bool {
        guard index < word.count else { return node.isWord }

        if word[index] == "." { 
            for childNode in node.children.values {
               let found = findWord(index+1, word, childNode)
               if found { return true}
            }
        } else if let nextNode = node.children[word[index]] {
            return findWord(index+1, word, nextNode)
        }

        return false
    }
}

/**
 * Your WordDictionary object will be instantiated and called as such:
 * let obj = WordDictionary()
 * obj.addWord(word)
 * let ret_2: Bool = obj.search(word)
 */
