import UIKit

func quickSort(_ input: [Int], low: Int, high: Int) -> [Int] {
  var result = input

  if low < high {
    let pivot = result[high]
    var i = low
    for j in low..<high {
      if result[j] <= pivot {
        (result[i],result[j]) = (result[j],result[i])
        i += 1
      }
    }
    (result[i], result[high]) = (result[high],result[i])
    result = quickSort(result, low: low, high: i - 1)
    result = quickSort(result, low: i + 1, high: high)
  }
  return result
}

quickSort([5,2,3,4,12,5,2], low: 0, high: 6)
