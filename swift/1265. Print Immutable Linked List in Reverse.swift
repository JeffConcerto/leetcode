/**
 * Definition for ImmutableListNode.
 * public class ImmutableListNode {
 *     public func printValue() {}
 *     public func getNext() -> ImmutableListNode? {}
 * }
 */

class Solution {
    func printLinkedListInReverse(_ head: ImmutableListNode?) {
        var current = head
        var stack = [ImmutableListNode]()
        while current != nil {
            stack.append(current!)
            current = current?.getNext()
        }

        while !stack.isEmpty {
            stack.removeLast().printValue()
        }
    }
}
