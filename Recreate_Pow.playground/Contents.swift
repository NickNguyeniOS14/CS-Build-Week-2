import UIKit

func recreatePow(first: Int, second: Int) -> Int {
  guard first > 0, second > 0 else { fatalError() }
  var result = 1
  for _ in 1...second {
    result *= first
  }
  return result
}


recreatePow(first: 4, second: 3)
recreatePow(first: 2, second: 8)
