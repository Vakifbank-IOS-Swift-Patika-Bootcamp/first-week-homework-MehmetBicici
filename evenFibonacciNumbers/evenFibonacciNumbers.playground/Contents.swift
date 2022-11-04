import Foundation

func evenFibonacciNumbers(getNumberOfIteration: Int) -> Int {
    
    // Recursion Version
    // But this function starts 0 so the sum of the fibonacci number will be 1 less than the sum of the given value
    
    /*
     if getNumberOfIteration <= 1 {
         return getNumberOfIteration
     } else {
         return (evenFibonacciNumbers(getNumberOfIteration: getNumberOfIteration - 2) + evenFibonacciNumbers(getNumberOfIteration: getNumberOfIteration - 1))
     }
     */
     
    // Iterative Version
     var tPointFirst = 1, tPointSecond = 2
     var sum = 0
     var evenNumSum = 0
     for _ in 2...getNumberOfIteration {
         sum = tPointFirst + tPointSecond
         tPointFirst = tPointSecond
         if tPointSecond % 2 == 0 {
             evenNumSum += tPointSecond
         }
         tPointSecond = sum
     }
     return evenNumSum
}
print("Result of even fibonacci numbers: \(evenFibonacciNumbers(getNumberOfIteration:10))")

