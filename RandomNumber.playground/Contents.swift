import UIKit

func generateRandom(min: Int, max: Int) -> Int {
  return (min...max).randomElement()!
}

generateRandom(min: 1, max: 5)
