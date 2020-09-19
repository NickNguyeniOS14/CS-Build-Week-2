import UIKit

var str = "Hello, playground"


func reverseWordInString(input: String) -> String {
  let parts = input.components(separatedBy: " ")
  let reversed = parts.map { String($0.reversed()) }
  return reversed.joined(separator: " ")
}

reverseWordInString(input: "Swift Coding Challenges")
