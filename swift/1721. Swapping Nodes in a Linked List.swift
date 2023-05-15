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
    func swapNodes(_ head: ListNode?, _ k: Int) -> ListNode? {
        // Get count of nodes in list:
        var nodeCount = 0
        var current = head
        while current != nil {
            nodeCount += 1
            current = current!.next
        }

        // Get nodes A and B:
        var nodeA = head
        var nodeB = head
        
        let aIndex = k
        let bIndex = nodeCount - (k-1)
        var i = 1
        
         while i < aIndex || i < bIndex {
            if i < aIndex {
                nodeA = nodeA!.next
            }
            if i < bIndex {
                nodeB = nodeB!.next
            }
            i += 1
        }

        let aVal = nodeA!.val
        nodeA!.val = nodeB!.val
        nodeB!.val = aVal

        // Code To Actually Swap Nodes is Below:
        // // Get nodes before A and B:
        // var nodeBeforeA = head
        // var nodeBeforeB = head
        
        // let aIndex = k
        // let bIndex = nodeCount - (k-1)
        // var i = 1

        //  let aBeforeIndex = k - 1
        // let bBeforeIndex = nodeCount - k
        // var i = 1

    //     while i != bBeforeIndex {
    //         if i < aBeforeIndex {
    //             nodeBeforeA = nodeBeforeA!.next
    //         }
    //         nodeBeforeB = nodeBeforeB!.next
    //         i += 1
    // }

        // // Both nodes should be at the node prior to A and B.
        // // Get A & B:
        // var nodeA = nodeBeforeA!.next
        // var nodeB = nodeBeforeB!.next

        // // Swap Next pointers for A & B:
        // let nodeANext = nodeA!.next
        // nodeA!.next = nodeB!.next
        // nodeB!.next = nodeANext

        // // Set Before Pointers to Swaped Nodes:
        // nodeBeforeA!.next = nodeB
        // nodeBeforeB!.next = nodeA

        return head
    }
}
