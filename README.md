# CS Build Week 2: Interview Prep

This is a general repo that you can fork for holding any artifacts you
might need to submit during the week. Feel free to make subdirectories
here as necessary.

For all details about the week, [check out the page in
TrainingKit](https://learn.lambdaschool.com/cs/sprint/reco0t22NdXmr8VyL).

1 .https://leetcode.com/problems/contains-duplicate/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
     return Set(nums).count != nums.count
    }
}
