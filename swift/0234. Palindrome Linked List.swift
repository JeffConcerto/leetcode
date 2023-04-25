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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var array = [Int]()
        var current = head

        while current != nil {
            array.append(current!.val)
            current = current!.next
        }

        for i in 0..<array.count/2 {
            if array[i] != array[array.count-i-1] { return false}
        }

        return true
    }
}
