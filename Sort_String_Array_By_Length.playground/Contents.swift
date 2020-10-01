import UIKit

extension Collection where Element == String {
    func challenge39() -> [String] {
        return self.sorted { $0.count > $1.count}
    }
}



["a","abc","ab"].challenge39()
["paul", "taylor", "adele"].challenge39()

