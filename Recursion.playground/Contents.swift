import UIKit

func recursive(input: Int) -> Int {
    if input <= 0 {
        return input
    } else {
        let output = recursive(input: input - 1)
        return output
    }
}


recursive(input: 12)
