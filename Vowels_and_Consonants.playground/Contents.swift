import UIKit

// Given a string in English, return a tuple containing the number of vowels and consonants.

func countVowelsAndConsonants(string: String) -> (vowels: Int, consonants: Int) {
    let vowels: [Character] = ["A","E","I","O","U"]
    let consonants: [Character] = ["B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z"]
    var count: (vowels: Int , consonants: Int) = (0,0)
    
    for character in string.uppercased() {
        if vowels.contains(character) {
            count.vowels += 1
        } else if consonants.contains(character) {
            count.consonants += 1
        }
    }
    return count
    
}

countVowelsAndConsonants(string: "Mississippi")
countVowelsAndConsonants(string: "Swift Coding Challenges")
