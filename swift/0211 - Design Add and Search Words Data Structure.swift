/**
 * Your WordDictionary object will be instantiated and called as such:
 * let obj = WordDictionary()
 * obj.addWord(word)
 * let ret_2: Bool = obj.search(word)
 */

class WordDictionary {

    var trie = Trie()
    init() {}
    
    func addWord(_ word: String) {
        for char in word {
            if char == "." { return }
        }
        trie.insert(word)
    }
    
    func search(_ word: String) -> Bool {
        trie.dfs(word)
    }


    class Trie {
        class Node {
            var isWord: Bool = false
            var children: [Character: Node] = [:]
        }

         private var root = Node()

        init() {}

        func insert(_ word: String) {
            var node = root
            for char in word {
                node.children[char] = node.children[char] ?? Node()
                node = node.children[char]!
            }
            node.isWord = true
        }
        
        func dfs(_ word: String) -> Bool {
            return dfs_(0, Array(word), root)
        }
        private func dfs_(_ index: Int, _ word: [Character], _ node: Trie.Node) -> Bool {
            if index == word.count { return node.isWord }
            let char = word[index]

            if char == "." {
                for character in node.children.keys {
                    if let nextNode = node.children[character], dfs_(index+1, word, nextNode) {
                        return true 
                    }
                }
                return false
            } else {
                if let nextNode = node.children[char], dfs_(index+1,word,nextNode) {
                    return true
                } else {
                    return false
                }
            }
        }
    }


}

// /**
//  * Your WordDictionary object will be instantiated and called as such:
//  * let obj = WordDictionary()
//  * obj.addWord(word)
//  * let ret_2: Bool = obj.search(word)
//  */
