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
    func removeNodes(_ head: ListNode?) -> ListNode? {
        var stack = [Int]()
        var current = head

        while current != nil {
            let val = current!.val
            while !stack.isEmpty && stack.last! < val {
                stack.removeLast()
            }

            stack.append(val)
            current = current?.next
        }
        var root: ListNode? = ListNode(-1)        
        current = root

        for num in stack {
            let node = ListNode(num)
            current?.next = node
            current = node
        }
        return root?.next
    }
}
