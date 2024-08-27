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

// New Solution:
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head

        while fast != nil && fast!.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        return slow
    }
}

// Old Solution:
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var count = 0
        var current = head
        while current != nil {
            current = current?.next
            count += 1
        }

        let midpoint = count/2
        count = 0
        current = head

        while count != midpoint {
            current = current?.next
            count += 1
        }

        return current
    }
}
