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
    func removeZeroSumSublists(_ head: ListNode?) -> ListNode? {
        var arr = [Int]()
        var current = head
        while current != nil {
            arr.append(current!.val)
            current = current!.next
        }
        var i = 0
        while i < arr.count {
            if arr[i] == 0 { arr.remove(at:i); continue }
            var j = i-1
            var sum = 0
            var didDelete = false
            while j >= 0 {
                sum += arr[j]
                if sum + arr[i] == 0 {
                    arr = Array(arr[0..<j]) + Array(arr[i+1..<arr.count])
                    i = j
                    didDelete = true
                    break
                }
                j -= 1
            }
            if !didDelete { 
                i += 1 
            }   
        }

        var newHead: ListNode? = ListNode(-1)
        current = newHead
        for num in arr {
            current!.next = ListNode(num)
            current = current!.next
        }
       
        return newHead!.next
    }
}
