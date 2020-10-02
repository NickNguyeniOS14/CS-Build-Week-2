import UIKit

extension Collection where Iterator.Element == Int {
    func challenge42(firstIndexOf num:Int) -> Int? {
        var indexResult: Int?
        guard self.contains(num) else {return nil}
        for (index, item) in self.enumerated() {
            if num == item {
                indexResult = index
            }
        }
        return indexResult
    }
}


[1,2,3].challenge42(firstIndexOf: 1)
[1,2,3].challenge42(firstIndexOf: 5)
