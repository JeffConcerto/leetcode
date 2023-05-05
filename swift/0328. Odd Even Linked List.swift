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
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return nil }
        var current = head
        var evenHead = head!.next
        var currentEven: ListNode? = head!.next
        var nextOdd = head

        while current != nil && currentEven != nil {
            // Need swap current next with next next
            if current!.next != nil && currentEven!.next != nil {
                nextOdd = currentEven!.next // 1,2,3,4,5,6 = nextOdd -> 3
                // Set even's next to odd's next
                currentEven!.next = nextOdd!.next // 2.next = 3.next -> 2.next = 4
                // 1->2->4 || 3->4
                // Set odd's next to even
                nextOdd!.next = evenHead // 3.next = 2 (even head) 
                // 1->2->4 || 3->2
                // Set current (original odd)'s next to odd
                //1->3->2->4->5
                current!.next = nextOdd // 1.next = 3
                // Set lastEven to even's next
                currentEven = currentEven!.next // 2 = 4
                current = nextOdd // current = 3
            } else {
                break
            }
            
        }
        
        return head
    }
}
