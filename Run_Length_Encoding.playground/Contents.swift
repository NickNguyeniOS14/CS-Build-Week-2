import UIKit

//Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.




func challenge13b(input: String) -> String {
  var returnValue = ""
  var letterCounter = 0
  let letterArray = Array(input)
  
  for i in 0 ..< letterArray.count {
    letterCounter += 1
    
    if i + 1 == letterArray.count || letterArray[i] != letterArray[i + 1] {
      returnValue += "\(letterArray[i])\(letterCounter)"
      letterCounter = 0
    }
  }
  
  return returnValue
}

challenge13b(input: "BBBBaaaa")
