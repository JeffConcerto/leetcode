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
    func mergeInBetween(_ list1: ListNode?, _ a: Int, _ b: Int, _ list2: ListNode?) -> ListNode? {
        var current = list1
        var nodeIndex = 0
        while nodeIndex < a-1 {
            current = current!.next
            nodeIndex += 1
        }
        // - Current is now Node (a-1):
        var temp = current!.next // - temp is Node a
        nodeIndex += 1

        // - Get Node (b):
        while nodeIndex < b {
            temp = temp!.next
            nodeIndex += 1
        }

        // - temp is now Node (b):
        // - Set Node (a-1) to point to list2:
        current?.next = list2
        var newTemp = list2

        // - Use newTemp to get tail of list2:
        while newTemp?.next != nil {
            newTemp = newTemp!.next
        }

        // - newTemp is now tail of List2
        // - Set tail to point to Node(b)'s:
        newTemp?.next = temp!.next

        return list1

    }
}
