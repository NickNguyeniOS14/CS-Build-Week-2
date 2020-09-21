import UIKit

func isPrime(number: Int) -> Bool {
  if number <= 2 { return false }
  for i in 2..<number {
    if number % i == 0 {
      return false
    }
  }
  return true
 
}


isPrime(number: 11)

func isPrimeSecondSolution(number: Int) -> Bool {
  guard number >= 2 else { return false }
  guard number != 2 else { return true }
  let max = Int(round(sqrt(Double(number))))
  for i in 2...max {
    if number % i == 0 {
      return false
    }
   
  }
  return true
}


isPrimeSecondSolution(number: 4)
