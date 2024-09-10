/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var next: Node?
 *     public var random: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *    	   self.random = nil
 *     }
 * }
 */

// New Solution:
class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        guard head != nil else { return nil }
        var map = [Node: Node]()

        var current = head

        while current != nil {
            let copy = Node(current!.val)
            map[current!] = copy
            current = current?.next
        }

        for (orig, copy) in map {
            if let random = orig.random, let randomCopy = map[random] {
                copy.random = randomCopy
            }
            if let next = orig.next, let nextCopy = map[next] {
                copy.next = nextCopy
            }
        }

        return map[head!]!
    }
}


// Old Solution:
class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        guard head != nil else { return nil }
        var current = head
        var indexMap = [Int:Node]()
        var nodeMap = [Node:Int]()
        var newMap = [Int:Node]()
        var index = 0

        while current != nil {
            indexMap[index] = current
            nodeMap[current!] = index
            let newNode = Node(current!.val)
            newMap[index] = newNode
            index += 1
            current = current?.next
        }

        current = head
        var copy: Node? = newMap[0]!
        let count = index
        index = 0

        while current != nil {
            let randomIndex = current!.random == nil ? -1 : nodeMap[current!.random!]!
            if randomIndex != -1 {
                copy?.random = newMap[randomIndex]!
            }
            if index < count-1 {
                copy?.next = newMap[index+1]!
            }
            copy = copy?.next
            current = current?.next
            index += 1
        }
        return newMap[0]!       
    }
}
