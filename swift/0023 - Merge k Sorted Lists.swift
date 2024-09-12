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

// New Solution:
class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        guard lists.count > 0 else { return nil }
        var lists = lists
        while lists.count > 1 {
            var mergedLists = [ListNode?]()

            for i in stride(from:0, to: lists.count, by: 2) {
                let l1 = lists[i]
                let l2 = i+1 < lists.count ? lists[i+1] : nil
                let merged = mergeLists(l1,l2)
                mergedLists.append(merged)
            }
            lists = mergedLists
        }

        func mergeLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            var dummy: ListNode? = ListNode(-1)
            var current = dummy
            var l1 = l1
            var l2 = l2

            while l1 != nil || l2 != nil {
                if l1 != nil && l1!.val < l2?.val ?? 100000 {
                    current?.next = l1
                    l1 = l1?.next
                } else {
                    current?.next = l2
                    l2 = l2?.next
                }
                current = current?.next 
            }
            return dummy?.next
        }
        
        return lists[0]
    }
}

// Old Solution:
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
