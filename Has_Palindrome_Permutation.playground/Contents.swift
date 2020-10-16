
import Foundation

extension Character {
    func isLetter() -> Bool {
        return "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".contains(self)
    }
}
extension String {
    func substring(from startIndex: String.Index, to endIndex: String.Index) -> String {
        // make sure we get the character at endIndex in our range
        let range = startIndex..<self.index(endIndex, offsetBy: 1)
        return String(self[range])
    }
}

class WordCloudData {

    private(set) var wordsToCounts: [String: Int] = [:]

    init(_ input: String) {
        populateWordsToCounts(input)
    }

    private func populateWordsToCounts(_ input: String) {
        // iterates over each character in the input string, splitting
        // words and passing them to addWordToHashMap()

        var currentWordStartIndex = input.startIndex
        var currentWordEndIndex = input.startIndex
        var startingNewWord = true

        for (i, stringIndex) in input.indices.enumerated() {
            let character = input[stringIndex]

            // if we reached the end of the string we check if the last
            // character is a letter and add the last word to our hash map
            if i == input.indices.count - 1 {
                if character.isLetter() {
                    if startingNewWord {
                        currentWordStartIndex = stringIndex
                        startingNewWord = false
                    }
                    currentWordEndIndex = stringIndex
                }
                if startingNewWord == false {
                    let currentWord = input.substring(from: currentWordStartIndex,
                                                      to: currentWordEndIndex)
                    addWordToDictionary(currentWord)
                }

                // if we reach a space or emdash we know we're at the end of a word
                // so we add it to our hash map and reset our current word
            } else if character == " " || character == "\u{2014}" {
                if startingNewWord == false {
                    let currentWord = input.substring(from: currentWordStartIndex,
                                                      to: currentWordEndIndex)
                    addWordToDictionary(currentWord)
                    startingNewWord = true
                }

                // we want to make sure we split on ellipses so if we get two periods in
                // a row we add the current word to our hash map and reset our current word
            } else if character == "." {
                let nextCharIndex = input.index(stringIndex, offsetBy: 1)
                if nextCharIndex != input.endIndex && input[nextCharIndex] == "." {
                    if startingNewWord == false {
                        let currentWord = input.substring(from: currentWordStartIndex,
                                                          to: currentWordEndIndex)
                        addWordToDictionary(currentWord)
                        startingNewWord = true
                    }
                }

                // if the character is a letter or an apostrophe, we add it to our current word
            } else if character.isLetter() || character == "'" {
                if startingNewWord == true {
                    currentWordStartIndex = stringIndex
                    startingNewWord = false
                }
                currentWordEndIndex = stringIndex

                // if the character is a hyphen, we want to check if it's surrounded by letters
                // if it is, we add it to our current word
            } else if character == "-" {

                guard i > 0 else {
                    continue
                }

                let beforeIndex = input.index(stringIndex, offsetBy: -1)
                let afterIndex = input.index(stringIndex, offsetBy: 1)

                if input[beforeIndex].isLetter() && input[afterIndex].isLetter() {
                    if startingNewWord == true {
                        currentWordStartIndex = stringIndex
                        startingNewWord = false
                    }
                    currentWordEndIndex = stringIndex
                } else {
                    if startingNewWord == false {
                        let currentWord = input.substring(from: currentWordStartIndex,
                                                          to: currentWordEndIndex)
                        addWordToDictionary(currentWord)
                        startingNewWord = true
                    }
                }
            }
        }
    }

    // Helper 
    private func addWordToDictionary(_ word: String) {

        // if the word is already in the hash map we increment its count
        if let value = wordsToCounts[word] {
            wordsToCounts[word] = value + 1

            // if a lowercase version is in the hash map, we know our input word must be uppercase
            // but we only include uppercase words if they're always uppercase
            // so we just increment the lowercase version's count
        } else if let value = wordsToCounts[word.lowercased()] {
            wordsToCounts[word.lowercased()] = value + 1

            // if an uppercase version is in the hash map, we know our input word must be lowercase.
            // since we only include uppercase words if they're always uppercase, we add the
            // lowercase version and give it the uppercase version's count
        } else if let value = wordsToCounts[word.capitalized] {
            wordsToCounts[word] = value + 1
            wordsToCounts[word.capitalized] = nil

            // otherwise, the word is not in the hash map at all, lowercase or uppercase
            // so we add it to the hash map
        } else {
            wordsToCounts[word] = 1
        }
    }
}

let data = WordCloudData("Add milk and eggs, then add flour and sugar.")
print(data.wordsToCounts)
