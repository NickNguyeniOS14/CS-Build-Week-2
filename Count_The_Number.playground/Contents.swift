import UIKit

extension Collection where Iterator.Element == Int {
    func countNum(target: Character) -> Int {
        var total = 0

        for item in self {
            let str = String(item)

            for letter in str where letter == target {

                    total += 1

            }
        }
        return total
    }
}

[1,5,5,555,5].countNum(target: "5")
[2,2,222,4,3].countNum(target: "2")
