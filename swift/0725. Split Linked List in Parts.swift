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
    func splitListToParts(_ head: ListNode?, _ k: Int) -> [ListNode?] {
        var result = [ListNode?]()
        var count = 0

        var current = head
        // Get count of nodes in list:
        while current != nil {
            count += 1
            current = current?.next
        }

        // Get total parts to split list into:
        var bins = count / k 
        if bins == 0 { bins = 1 }
        var remainders = count >= k ? count % k : 0 // If split is not equal
        
        current = head
        var currentHead = current // head of current part
        var currentTotal = 1 // Keeps track of nodes in current part
        
        while current != nil {
            let mod = remainders > 0 ? bins + 1 : bins
            if currentTotal % mod == 0 {
                result.append(currentHead)
                let previous = current
                current = current?.next
                currentHead = current
                previous?.next = nil
                remainders -= 1
                currentTotal = 1
            } else {
                current = current!.next
                currentTotal += 1
            }
            
        }

        if currentHead != nil {
            result.append(currentHead)
        }

        while result.count < k {
            result.append(nil)
        }

        return result
    }
}
