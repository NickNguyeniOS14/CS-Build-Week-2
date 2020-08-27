import UIKit

//https://leetcode.com/problems/find-the-duplicate-number/
func findDuplicate(_ nums: [Int]) -> Int {
  
  var set = Set<Int>()
  
  for n in nums {
    if set.contains(n) {
      return n
    }
    set.insert(n)
 
  }
 
  return -1
}


findDuplicate([1,2,2,4,3])
