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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return head }
        let newHead = head!.next == nil ? head : head!.next
        
        var current = head
        var previous: ListNode? = nil
        
        while current?.next != nil {
            swap(current, using: previous)
         
            previous = current
            current = current!.next
        }
        
        return newHead
    }
    
    private func swap(_ current: ListNode?, using previous: ListNode?) {
        var oldCurrent = current
        var newCurrent = oldCurrent!.next
        let lastNode = newCurrent!.next
        
        newCurrent!.next = oldCurrent
        oldCurrent!.next = lastNode

        var previous = previous
        if previous != nil {
            previous!.next = newCurrent     
        }
    }
}
