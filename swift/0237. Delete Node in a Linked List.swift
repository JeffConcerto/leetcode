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
    func deleteNode(_ node: ListNode?) {
        guard node != nil else { return }
        if let next = node!.next {
            node!.val = next.val
        }
        if node!.next!.next == nil {
            node!.next = nil
        } else {
            deleteNode(node!.next)
        }
        
    }
}
