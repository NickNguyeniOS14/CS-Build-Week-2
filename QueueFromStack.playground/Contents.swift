import UIKit
//https://leetcode.com/problems/implement-queue-using-stacks/

class MyQueue {
  
  var input = [Int]()
  var output = [Int]()
  
  func push(_ x: Int) {
    input.append(x)
  }
  
  func pop() {
    peek()
    output.removeLast()
  }
  
  func peek() -> Int? {
    if output.isEmpty {
      while !input.isEmpty {
        output.append(input.removeLast())
      }
    }
    return output.last
  }
  
  func empty() -> Bool {
    return input.isEmpty && output.isEmpty
  }
}

let obj = MyQueue()
obj.push(1)
obj.push(2)
obj.push(3)
obj.push(4)
let ret_3 = obj.peek()
let ret_4 = obj.empty()

