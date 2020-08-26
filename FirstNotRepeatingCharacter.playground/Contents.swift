import UIKit

func first_not_repeating_character(s: String) -> Character {
  var tempDict = [Character:Int]()
  
  for letter in s {
    tempDict[letter] = (tempDict[letter] ?? 0) + 1
  }
 
  for letter in s where tempDict[letter] == 1 {
      return letter
  }
  
  return "_"
}
