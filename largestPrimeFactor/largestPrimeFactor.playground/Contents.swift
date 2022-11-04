import Foundation

// According to me, the code I wrote below is not effective but it works. If you have any other way to solve this problem, you can message me.


func findLargestPrimeFactor(getNumber: Int) -> Int {
    var allDivisorList = [Int]()
    var notPrimeList = [Int]()
    for divNum in 2..<getNumber {
        if getNumber % divNum == 0 {
            allDivisorList.append(divNum)
            for num in 2...13 {
                if divNum % num == 0 {
                    if divNum == num {
                        continue
                    }
                    notPrimeList.append(divNum)
                    break
                }
            }
        }
    }
    let differenceBetweenAllDivisorListAndNotPrimeList = Array(Set(allDivisorList).subtracting(Set(notPrimeList)))
    guard let largestPrimeFactor = differenceBetweenAllDivisorListAndNotPrimeList.max() else { return 0 }
    return largestPrimeFactor
}

print("Largest prime factor of entered number: \(findLargestPrimeFactor(getNumber: 13195))")


