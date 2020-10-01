import UIKit

func challenge40a(input: [Int]) -> [Int] {
    let correctArray = Array(1...100)
    var missingNumbers = [Int]()

    for number in correctArray {
        if !input.contains(number) {
            missingNumbers.append(number)
        }
    }
    return missingNumbers
}


challenge40a(input: Array(1...95))

func challenge40c(input: [Int]) -> [Int] {
    let inputSet = Set(input)
    let testSet = Set(1...100)
    return Array(testSet.subtracting(inputSet)).sorted()
}
challenge40c(input: Array(2...98))
