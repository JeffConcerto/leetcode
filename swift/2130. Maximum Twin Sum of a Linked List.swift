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
    func pairSum(_ head: ListNode?) -> Int {
        var sumArray = Array(repeating: 0, count: 100_000)
        var current = head
        var i = 0
        while current != nil {
            sumArray[i] = current!.val
            current = current!.next
            i += 1
        }

        let n = i
        var maxSum = 0
        for i in 0..<n {
            maxSum = max(maxSum, sumArray[i] + sumArray[n-i-1])
        }

        return maxSum
    }
}
