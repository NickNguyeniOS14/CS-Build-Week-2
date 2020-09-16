import UIKit

func condenseWhitespace(input: String) -> String {
    // [space]+” means “match one or more spaces”, so that will cause all multiple spaces to be replaced with a single space.
    
  
    return input.replacingOccurrences(of: " +", with: " ",options: .regularExpression,range: nil)
}


condenseWhitespace(input: "  d     d  a")


func condense_whitespace(input: String) -> String {
    var seenSpace = false
    var returnValue = ""
    for letter in input {
        if letter == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        returnValue.append(letter)
    }
    return returnValue
}

condense_whitespace(input: "   h  ll   o")
