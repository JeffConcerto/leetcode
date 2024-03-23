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
    func reorderList(_ head: ListNode?) {
        // - Get middle:
        var slow = head
        var fast = head

        while fast?.next != nil {
            slow = slow!.next
            fast = fast?.next?.next
        }

        var middle = slow
        var previous: ListNode? = nil
        // - reverse middle
        while middle != nil {
            let next = middle?.next
            middle?.next = previous
            previous = middle
            middle = next
        }

        // - previous = middle reversed
        var current = head

        while previous != nil && previous !== current {
            let next = current?.next 
            current?.next = previous
            current = previous
            previous = next
        }
        
    }
}
