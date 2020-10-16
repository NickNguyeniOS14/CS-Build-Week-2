import UIKit

func getFib(_ position: Int) -> Int {
    if position == 0 || position == 1 {
        return position
    }
    var first = 0
    var second = 1
    var fib = 1
    for _ in 2...position {
        fib = first + second
        first = second
        second = fib
    }
    return fib
}

// ======= //

// Recursive approach
func getFibRecursive(_ position: Int) -> Int {
    if position == 0 || position == 1 {
        return position
    }
    return getFibRecursive(position - 1) + getFibRecursive(position - 2)
}


getFib(3)
getFibRecursive(4)
