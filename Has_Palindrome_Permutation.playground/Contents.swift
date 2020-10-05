import UIKit

func hasPalindromePermutation(in theString: String) -> Bool {
    // track characters we've seen an odd number of times
    var unpairedCharacters: Set<Character> = []

    for character in theString {
        if unpairedCharacters.contains(character) {
            unpairedCharacters.remove(character)
        } else {
            unpairedCharacters.insert(character)
        }
    }

    // the string has a palindrome permutation if it
    // has one or zero characters without a pair
    return unpairedCharacters.count <= 1
}
