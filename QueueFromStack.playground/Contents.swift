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


// Your MyQueue object will be instantiated and called as such:
let obj = MyQueue()
obj.push(2)
obj.push(3)
let ret_3 = obj.peek()
let ret_4 = obj.empty()

