import UIKit

extension Collection where Iterator.Element: Comparable {
    func challenge38(count: Int) -> [Iterator.Element] {
        let sortedArray = self.sorted()
        return Array(sortedArray.prefix(count))
    }
}


[1,4,2,5,124].challenge38(count: 2)
[Int]().challenge38(count: 5)
