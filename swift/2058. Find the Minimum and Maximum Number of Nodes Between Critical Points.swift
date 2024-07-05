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
    func nodesBetweenCriticalPoints(_ head: ListNode?) -> [Int] {
        var pointsPositions = [Int]()

        var current = head
        var previousValue: Int? = nil
        var pos = 0
        while let node = current {
            if let previousValue {
                if let nextValue = node.next?.val {
                    if node.val > previousValue && node.val > nextValue {
                        pointsPositions.append(pos)
                    } else if node.val < previousValue && node.val < nextValue {
                        pointsPositions.append(pos)
                    }
                }
            }
            previousValue = node.val
            current = node.next
            pos += 1
        }

        if pointsPositions.count < 2 {
            return [-1,-1]
        }
        var minDis = Int.max
        var maxDis = Int.min

        for i in 1..<pointsPositions.count {
            let minDistance = pointsPositions[i]-pointsPositions[i-1]
            minDis = min(minDis, minDistance)
            let maxDistance = pointsPositions[i]-pointsPositions[0]
            maxDis = max(maxDis, maxDistance)
        }
        
        return [minDis, maxDis]
    }
}
