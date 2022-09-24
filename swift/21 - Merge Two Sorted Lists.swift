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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil {
            return nil
        } else if list1 == nil {
            return list2
        } else if list2 == nil {
            return list1
        }
        
        var headNode = ListNode()
        var list1 = list1
        var list2 = list2
        if list1!.val < list2!.val {
            headNode.val = list1!.val
            list1 = list1!.next
        } else {
            headNode.val = list2!.val
             list2 = list2!.next
        }
        
        var tempNode = headNode
        while list1 != nil && list2 != nil {
             if list1!.val < list2!.val {
            tempNode.next = ListNode(list1!.val)
            list1 = list1!.next
        } else {
            tempNode.next = ListNode(list2!.val)
            list2 = list2!.next
        }
            tempNode = tempNode.next!
        }
        
      
        if list1 == nil {
            tempNode.next = list2
        } else if list2 == nil {
            tempNode.next = list1
        }
        
        return headNode
    }
}
