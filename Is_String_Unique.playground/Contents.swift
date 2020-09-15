//import UIKit

// Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.

func isStringUnique(input: String) -> Bool {
    return Set(input).count == input.count
}

isStringUnique(input: "No duplicates")
isStringUnique(input: "Hello, world")
