import UIKit

//https://leetcode.com/problems/search-in-rotated-sorted-array/

func search(_ nums: [Int], _ target: Int) -> Int {
      return nums.firstIndex(where: {$0 == target}) ?? -1
   }
