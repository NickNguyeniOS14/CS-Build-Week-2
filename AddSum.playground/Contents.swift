import UIKit
//https://leetcode.com/problems/add-two-numbers/
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


func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  let dummyHead: ListNode? = ListNode(0)
  var first = l1
  var second = l2
  var current = dummyHead
  var carry = 0
  
  while first != nil || second != nil {
    let x = first != nil ? first!.value  : 0
    let y = second != nil ? second!.value  : 0
    let sum = carry + x + y
    carry = sum / 10
    current?.next = ListNode(sum % 10)
    current = current?.next
    
    if first != nil {
      first = first?.next
    }
    
    if second != nil {
      second = second?.next
    }
  }
  
  if carry > 0 {
    current?.next = ListNode(carry)
  }
  
  return dummyHead?.next
}
let linkedList1 = ListNode(2, ListNode(4, ListNode(3)))
let linkedList2 = ListNode(5, ListNode(6, ListNode(4)))
let result = addTwoNumbers(linkedList1, linkedList2)
print("Result LinkedList: \(result!.value) -> \(result!.next!.value) -> \(result!.next!.next!.value)")
