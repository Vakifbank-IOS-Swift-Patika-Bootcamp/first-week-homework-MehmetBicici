import Foundation



func getNumberForHalfPyramid(numberOfStar: Int) {
    
    for indexOne in 0..<numberOfStar {
        for _ in 0..<indexOne+1 {
            print("* ", terminator: "")
        }
        print("\n")
    }
}

getNumberForHalfPyramid(numberOfStar: 5)

