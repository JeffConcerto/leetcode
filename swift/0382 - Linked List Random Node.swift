/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Solution {
    private var head: ListNode?
    let N: Int

    init(_ head: ListNode?) {
        self.head = head
        var current = head 
        var count = -1
        while current != nil {
            count += 1
            current = current?.next
        }
        self.N = count
    }
    
    func getRandom() -> Int {
        guard N >= 0 else { return -1 }
        let randomIndex = Int.random(in: 0...N)
        var index = 0
        var current = head
        while index != randomIndex {
            current = current?.next
            index += 1
        }
        return current?.val ?? -1
    }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(head)
 * let ret_1: Int = obj.getRandom()
 */
