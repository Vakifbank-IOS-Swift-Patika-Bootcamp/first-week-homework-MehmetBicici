import Foundation

func findSumOfAllMultiplesOfThreeOrFiveBelowOneThousand() -> Int {
    var sum = 0
    for num in 0..<1000 {
        if num % 3 == 0 || num % 5 == 0 {
            sum += num
        }
    }
    return sum
}

print("Result of the sum: \(findSumOfAllMultiplesOfThreeOrFiveBelowOneThousand())")
