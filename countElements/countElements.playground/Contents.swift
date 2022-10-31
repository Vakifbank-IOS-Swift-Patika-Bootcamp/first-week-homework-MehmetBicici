import Foundation

/*
 TO-DO: Create a dict. The keys of the dictionary will be the elements of the array.
        The values of the dictionary will be the count of each elements of the array.
*/

func countElementsOfArray(inputArray: [Any]) -> Dictionary<String, Int> {
    
    let startVal = 1
    var countAndElementDict = Dictionary<String, Int>()
    for element in inputArray {
        // it converts any to string
        let s = String(describing: element)
        // Check if keys inside the dict
        if countAndElementDict.keys.contains(s) {
            countAndElementDict[s]? += 1
        } else {
            countAndElementDict[s] = startVal
        }
    }
    return countAndElementDict
}

print(countElementsOfArray(inputArray: ["a","b","t","@","a","_","_","_",1,1,2,2,3,3,3,3,"@"]))

