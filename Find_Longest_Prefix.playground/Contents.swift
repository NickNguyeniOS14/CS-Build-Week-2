import UIKit

func findLongestPrefix(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    print(parts)
    guard let first = parts.first else { return "" }
    print("First: \(first)")
    var currentPrefix = ""
    var bestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)
        
        for word in parts {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }
    
    return bestPrefix
}



findLongestPrefix(input: "flip flap flop")
