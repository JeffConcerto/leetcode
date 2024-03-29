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
    func sortList(_ head: ListNode?) -> ListNode? {
        var array = [Int]()

        var current = head
        while current != nil {
            array.append(current!.val)
            current = current!.next
        }

        array.sort()
        current = head
        var i = 0
        while current != nil {
            current!.val = array[i]
            i += 1
            current = current!.next
        }

        return head
    }
}
