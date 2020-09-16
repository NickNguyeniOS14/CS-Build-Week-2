import UIKit

func areTwoStringRotated(input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else { return false }
    let combined = input + input
    return combined.contains(rotated)
    
    
}


areTwoStringRotated(input: "abcde", rotated: "eabcd")
areTwoStringRotated(input: "abc", rotated: "a")
