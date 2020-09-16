import UIKit

func threeDifferentLettersUsingSet(first: String, second: String) -> Bool {
    guard first.count == second.count else { return false }
    
    
    return Set(first).subtracting(Set(second)).count <= 3
    
    
}


threeDifferentLetters(first: "Clamp", second: "Cramp")
threeDifferentLetters(first: "Clamp", second: "Crams")

threeDifferentLetters(first: "clamp", second: "maple") // Edge case with Set solution


func threeDifferentLetters(first: String, second: String) -> Bool {
    guard first.count == second.count else {
        return false
    }
    
    let firstArray = Array(first)
    let secondArray = Array(second)
    var differences = 0
    
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            differences += 1
            
            if differences == 4 {
                return false
            }
        }
    }
    return true
    
    
}
threeDifferentLetters(first: "clamp", second: "maple")
