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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var array1 = [Int]()
        var array2 = [Int]()

        // Get digit count for l1:
        var current = l1
        while current != nil {
           array1.append(current!.val)
            current = current!.next
        }

        // Get digit count for l2:
        current = l2
        while current != nil {
            array2.append(current!.val)
            current = current!.next
        }

        var i = array1.count-1
        var j = array2.count-1
        var k = max(i,j) + 2
        var result = Array(repeating:0, count: k)
        var remainder = 0

        while i >= 0 || j >= 0 {
            let a = i >= 0 ? array1[i] : 0
            let b = j >= 0 ? array2[j] : 0
            let sum = a + b + remainder
            let newDigit = sum % 10 
            result[k-1] = newDigit
            remainder = sum / 10
            i -= 1
            j -= 1
            k -= 1
        }
        if remainder > 0 { result[k-1] = remainder}

        if result[0] == 0 { result.removeFirst() }

        var resultNode: ListNode? = ListNode(-1)
        current = resultNode
        for digit in result {
            let newNode = ListNode(digit)
            current!.next = newNode
            current = current!.next
        }
        return resultNode!.next

    }
}
