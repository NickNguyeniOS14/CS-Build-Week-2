import UIKit

class ListNode {
    var value: Int
    var next: ListNode?
    init() {
        self.value = 0
        self.next = nil
    }
    init(_ value: Int) {
        self.value = value
        self.next = nil
    }

    init(_ value: Int, _ next: ListNode?) {
        self.value = value
        self.next = next
    }
}

func reverseLinkedList(_ head: ListNode?) -> ListNode? {
    var currentNode = head
    var prevNode: ListNode?
    var nextNode: ListNode?

    while currentNode != nil {
        nextNode = currentNode?.next
        currentNode?.next = prevNode
        prevNode = currentNode
        currentNode = nextNode
    }
    return prevNode
}

let linkedList = ListNode(4, ListNode(3, ListNode(2)))
let reversedLinkedList = reverseLinkedList(linkedList)
print(reversedLinkedList!.value)
