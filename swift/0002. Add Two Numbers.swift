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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        // Add the two numbers together from back to front
        var dummy: ListNode? = ListNode(-1)
        var remainder = 0
        var l1 = l1
        var l2 = l2
        var current = dummy
        while l1 != nil || l2 != nil {
            let l1Val = l1 == nil ? 0 : l1!.val
            let l2Val = l2 == nil ? 0 : l2!.val
            var sum = remainder + l1Val + l2Val
            remainder = sum / 10
            sum %= 10
            current?.next = ListNode(sum)
            current = current?.next
            l1 = l1?.next
            l2 = l2?.next
        }

        if remainder > 0 {
            current?.next = ListNode(remainder)
        }

        // // Reverse answer list:
        // current = dummy?.next
        // var previous: ListNode? = nil
        // while current != nil {
        //     let next = current?.next
        //     current?.next = previous
        //     previous = current
        //     current = next
        // }

        return dummy?.next
    }
}
