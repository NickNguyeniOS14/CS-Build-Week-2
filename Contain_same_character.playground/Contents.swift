import UIKit

//Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.

func containSameCharacter(first: String, second: String) -> Bool {
    return first.sorted() == second.sorted()
}


containSameCharacter(first: "a1 b2", second: "b1 a2")
containSameCharacter(first: "abc", second: "abca")
containSameCharacter(first: "abc", second: "Abc")
containSameCharacter(first: "abcc", second: "abca")
