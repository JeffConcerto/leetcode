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
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        var nums = [Int]()

        var sum = 0
        var seenZero = false

        var current = head
        var head: ListNode? = ListNode(-1)
        var newCurrent = head

        while current != nil {
            sum += current!.val
            if current!.val == 0 {
                if seenZero {
                    let node: ListNode? = ListNode(sum)
                    newCurrent!.next = node
                    newCurrent = newCurrent!.next
                    sum = 0
                } else {
                    seenZero = true
                }
            }
            current = current!.next
        }

        return head!.next
    }
}
