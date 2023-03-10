/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return nil }
        var ahead = head
        var current = head
        var found = false

        while ahead?.next != nil {
            // guard current !== ahead else { found = true; break }
            current = current?.next
            ahead = ahead?.next?.next
            if current === ahead { found = true; break }
        }

        if !found{ return nil }
        
        current = head

        while current !== ahead {
                current = current?.next
                ahead = ahead?.next
        }
        return current
    }
}
