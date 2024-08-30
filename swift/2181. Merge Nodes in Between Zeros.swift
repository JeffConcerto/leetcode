// New Solution:
class Solution {
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        var start = head
        var current = head?.next
        var sum = 0
        while current != nil {
           if current!.val != 0 {
            sum += current!.val
           } else {
            start?.next = ListNode(sum)
            start = start?.next
            sum = 0
           }
            current = current?.next
        }

        return head?.next
    }
}

// OLD Soluton:
class Solution {
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        var nums = [Int]()

        var sum = 0
        var seenZero = false

        var current = head
        var head: ListNode? = ListNode(-1)
        var newCurrent = head

        while current != nil {
            sum += current!.val
            if current!.val == 0 {
                if seenZero {
                    let node: ListNode? = ListNode(sum)
                    newCurrent!.next = node
                    newCurrent = newCurrent!.next
                    sum = 0
                } else {
                    seenZero = true
                }
            }
            current = current!.next
        }

        return head!.next
    }
}
