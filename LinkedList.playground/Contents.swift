import UIKit

class Node<T> {
    var value: T
    var next: Node?

    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var head: Node<T>?

    func printNodes() {
        var currentNode = head

        while let node = currentNode {
            print(node.value,terminator: " ")
            currentNode = node.next
        }
    }
}

extension LinkedList {
    var centerNode: Node<T>? {
        var slow = head
        var fast = head

        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        return slow
    }


}


var list = LinkedList<Character>()
var previousNode: Node<Character>? = nil

for letter in "abcdefghijklmnopqrstuvwxyz" {
    let node = Node(value: letter)
    if let predecessor = previousNode {
        predecessor.next = node
    } else {
        list.head = node
    }
    previousNode = node
}
list.printNodes()

let c = list.centerNode
c?.value
