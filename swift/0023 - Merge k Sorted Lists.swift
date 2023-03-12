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
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        guard !lists.isEmpty else { return nil }
        var array = [Int]()

        for var list in lists {
            while list != nil {
                array.append(list!.val)
                list = list!.next
            }
        }
        if array.isEmpty { return nil }
        array.sort()
        var head = ListNode(array[0])
        var list = head

        for i in 1..<array.count {
            let node = ListNode(array[i])
            list.next = node
            list = list.next!
        }

        return head
        
    }
}
