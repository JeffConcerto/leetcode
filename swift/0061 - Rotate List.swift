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
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil else { return head }
        let count = getCount(of: head)
        let rotations = k % count
        if rotations == 0 { return head }
        return rotate(head, rotations, count)
        
    }

    private func getCount(of head: ListNode?) -> Int {
        guard head != nil else { return 0 }

        return 1 + getCount(of: head!.next)
    }

    private func rotate(_ head: ListNode?, _ rotations: Int, _ count: Int) -> ListNode? {
        var head = head
        var current = head
        let stop = count - rotations - 1
        var currentCount = 0

        while currentCount != stop {
            current = current!.next
            currentCount += 1
        }

        // Stopped at node before new head
        var newHead = current!.next
        current!.next = nil
        var oldHead = head

        current = newHead
        while current?.next != nil {
            current = current!.next
        }

        // Setting new tail to be old head
        current!.next = oldHead
        return newHead
    }
}
