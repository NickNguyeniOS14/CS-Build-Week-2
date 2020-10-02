import UIKit

extension Collection where Iterator.Element == Int {
    func findMedum() -> Double? {
        guard count != 0 else { return nil }
        let sortedArray = self.sorted()
        let middleIndex = sortedArray.count / 2

        if sortedArray.count % 2 == 0 {
            // return mean average of two center items
            return Double(sortedArray[middleIndex] + sortedArray[middleIndex - 1]) / 2
        } else {
            // return single center item
            return Double(sortedArray[middleIndex])
        }

    }
}


[1, 2, 3, 4].findMedum()
