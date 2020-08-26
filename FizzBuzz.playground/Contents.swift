import UIKit

//https://leetcode.com/problems/fizz-buzz/

func fizzBuzz(_ n: Int) -> [String] {
  var result: [String] = []
  for num in 1...n {
    switch (num % 3 == 0, num % 5 == 0) {
    case (true,true):
      result.append("FizzBuzz")
    case (true,false):
      result.append("Fizz")
    case (false,true):
      result.append("Buzz")
    default:
      result.append(String(num))
    }
  }
  return result
}

fizzBuzz(5)
