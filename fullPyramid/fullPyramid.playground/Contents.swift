import Foundation


func getNumberForFullPyramid(numberOfStar: Int) {
    
    for idx in 1...numberOfStar {
        for _ in stride(from: numberOfStar, to: idx, by: -1) {
            print(terminator : " ")
        }
        
        for _ in 1...idx {
            print("*", terminator: " ")
        }
        print(" ")
    }
    
}

getNumberForFullPyramid(numberOfStar: 4)
