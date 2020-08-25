import UIKit
// https://leetcode.com/problems/contains-duplicate/

func containsDuplicate(_ nums: [Int]) -> Bool {
    return Set(nums).count != nums.count
   }
