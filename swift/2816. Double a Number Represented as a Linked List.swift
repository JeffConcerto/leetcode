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
    func doubleIt(_ head: ListNode?) -> ListNode? {
        var nums = [Int]()

        var current = head
        while current != nil {
            nums.append(current!.val)
            current = current?.next
        }
        var result = Array(repeating: 0, count: nums.count+1)

        var remainder = 0
        for i in 0..<nums.count {
            let total = nums[nums.count-1-i] * 2 + remainder
            result[nums.count-i] = total % 10
            remainder = total / 10
        }

        if remainder > 0 {
            result[0] = remainder
        }

        var doubleHead: ListNode? = ListNode(result[0])
        current = doubleHead

        for i in 1..<result.count {
            current?.next = ListNode(result[i])
            current = current?.next
        }

        return result[0] == 0 ? doubleHead?.next : doubleHead
    }
}
