import UIKit

func binarySearch(_ array: [Int], value: Int) -> Int? {
    var lowIndex = 0
    var highIndex = array.count - 1

    while lowIndex <= highIndex {
        let midIndex = (lowIndex + highIndex) / 2
        if array[midIndex] == value {
            return midIndex
        } else if array[midIndex] < value {
            lowIndex = midIndex + 1
        } else {
            highIndex = midIndex - 1
        }
    }
    return nil
}

binarySearch([2,4,7,10,12,14,20,28], value: 20)

