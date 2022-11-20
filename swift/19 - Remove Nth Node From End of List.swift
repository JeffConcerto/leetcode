// Method 1:
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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard n > 1 else {
            // Remove Last Node
            return removeLastNode(head)
        }
        
        let count = getListCount(head)
        let nodeIndex = count - n
            
        guard nodeIndex != 0 else {
           return removeHead(head)
        }
        
        var nodeToDeletePredecessor = getNthNodePredecessor(head, nodeIndex)
        
        let nodeToDelete = nodeToDeletePredecessor!.next
        
        nodeToDeletePredecessor!.next = nodeToDelete!.next
        
        return head
    }
    
    private func getListCount(_ head: ListNode?) -> Int {
        var current = head
        var count = 0
        
        while current != nil {
            current = current!.next
            count += 1
        }
        
        return count
    }
    
    private func getNthNodePredecessor(_ head: ListNode?, _ index: Int) -> ListNode? {
        guard head != nil else { return nil }
        var current = head
        var count = 0
        
        while count < index - 1 {
            current = current!.next
            count += 1
        }
        
        return current
    }
    
    private func removeHead(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return nil }
        var head = head
        
        head = head!.next
        
        return head
    }
    
    private func removeLastNode(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return nil }
        var current = head

        while current!.next != nil && current!.next!.next != nil {
            current = current!.next
        }

        guard current!.next != nil else {
            current = nil
            return current
        }
        
        current!.next = nil
        return head
    }
    
}
