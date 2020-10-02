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

