import UIKit

func countCharacter(input: String, character: String) -> Int {
    let array = input.map { String($0) }
    let count = array.filter { $0 == character}.count
    return count
}


countCharacter(input: "The rain in Spain", character: "a")
countCharacter(input: "Hacking with Swift", character: "i")
countCharacter(input: "Mississippi", character: "i")
