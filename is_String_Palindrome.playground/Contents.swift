import UIKit

// Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.

func isPalindrome(input: String) -> Bool {
   
    return input.lowercased() == String(input.lowercased().reversed())
}

isPalindrome(input: "Never odd or even")
isPalindrome(input: "rotator")
isPalindrome(input: "Rats live on no evil star")
isPalindrome(input: "Hello, world")

