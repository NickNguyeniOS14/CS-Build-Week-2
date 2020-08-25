import UIKit

//https://leetcode.com/problems/two-sum/


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var dict = [Int:Int]()

  for (currentIndex, n) in nums.enumerated() {
    let complement = target - n

    if let complementIndex = dict[complement] {
      return [complementIndex,currentIndex]
    }
    dict[n] = currentIndex
  }
  return []
}


twoSum([2,5,3,4], 7)


