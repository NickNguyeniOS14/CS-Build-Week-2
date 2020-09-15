import UIKit

func removeDuplicate(from string: String) -> String {
    var used = [Character: Bool]()
    let result = string.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    return String(result)
}

removeDuplicate(from: "hello")
