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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        // If list is length 1, nothing to reverse:
        guard right > 1 else { return head }

        var index = 1 // current index of node
        var current = head // pointer to current node
        var previous: ListNode? = nil // pointer to previous node, for reversing

        // headEnd will be used to connect end of non-reversed list to start of reverse list:
        var headEnd: ListNode? = nil // ponter to last node before reverse

        // Only need to iterate upto and including the last index in the reversal (right):
         while index <= right {

            if index == left-1 {
                headEnd = current // pointer the end of the list before reversing starts
            }

            if index >= left {
                let next = current?.next
                current?.next = previous
                previous = current
                current = next
            } else {
                current = current!.next
            }

            index += 1
         }

         if headEnd == nil {
             // There were no nodes prior to the start of the reverse list.
             // head is start of reversal, and therefore, last node after reversal.
             // set head.next to point to current (pointer to last part of list)
             head?.next = current
         } else {
             // Connect the first node in the reversal (head.next)'s next to point to the last part
             // of the list:
            headEnd?.next?.next = current
            // Set the end of the first part of the list to point to the last node in 
            // the reversal (previous):
            headEnd?.next = previous
         }
       
        // If left != 1, head was not in reversal and remains head of list.
        // Else start of reversed list is start of list, previous is the last node in reversal: 
        return left != 1 ? head : previous
    }
}
