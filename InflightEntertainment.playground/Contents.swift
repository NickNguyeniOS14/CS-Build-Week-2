import UIKit

var str = "Hello, playground"


func isInFlight(flightLength: Int, movieLengths: [Int]) -> Bool {

    var movieLengthSeen = Set<Int>()

    for firstMovieLength in movieLengths {
        let matchingSecondMovieLength = flightLength - firstMovieLength

        if movieLengthSeen.contains(matchingSecondMovieLength) {
            return true
        }
        movieLengthSeen.insert(firstMovieLength)
    }
    // we never found a match, so return false
    return false
}


