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
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil else { return nil }
        if k == 1 { return head }


        // - Get node count:
        let count = getNodeCount(head)

        // - reverse each group:
        var heads = [[ListNode?]]()

        var i = 0
        var current = head
        while count - i >= k {
            if let reversedNodes = reverseKNodes(current,k) {
                heads.append(reversedNodes)
                current = reversedNodes[2]
            }
            i += k
        }

        // - Connect last end to left out nodes:
        heads.last![1]!.next = current
        
        // - Connect Each Group:

        var connectCurrent = heads[0][0]

        for i in 1..<heads.count {
            connectCurrent = heads[i-1][1]
            connectCurrent!.next = heads[i][0]
        }    

        return heads[0][0]
    }

    private func getNodeCount(_ root: ListNode?) -> Int {
        var count = 0
        var current = root

        while current != nil {
            count += 1
            current = current!.next
        }

        return count
    }

    private func reverseKNodes(_ start: ListNode?, _ k: Int) -> [ListNode?]? {
        if start == nil { return nil }
        var count = 0
        var current = start
        var previous: ListNode? = nil
        
        while count < k && current != nil {
            let next = current!.next
            current!.next = previous
            previous = current
            current = next
            count += 1
        }
        // - Return [front, end, start]
        // print(previous?.val, start?.val, current?.val)
        return count == k ? [previous, start, current] : nil
    }
}
