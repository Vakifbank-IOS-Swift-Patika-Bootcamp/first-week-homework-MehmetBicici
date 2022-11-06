import Foundation


func isPolindrom(word: String) -> Bool {
    
    var startIdx = 0
    var endIdx = word.count - 1
    var letterCharForward: Character
    var letterCharBack: Character
    let upperCaseWord = word.lowercased()
    while(startIdx < upperCaseWord.count) {
        let forwardIdx = upperCaseWord.index(upperCaseWord.startIndex, offsetBy: startIdx)
        let backIdx = upperCaseWord.index(upperCaseWord.startIndex, offsetBy: endIdx)
        letterCharForward = upperCaseWord[forwardIdx]
        letterCharBack = upperCaseWord[backIdx]
        if letterCharBack != letterCharForward {
            return false
        }
        startIdx += 1
        endIdx -= 1
    }
    return true
}

/*
 
 - If you want to try the function I wrote above, I'll put some sample palindrome words for you.
 - Polindrome Words : bib, nun, madam, racecar, cıvıc,deıfıed, level, DogeeseseeGod.
 - Not Polindrome Words : try, not, give, up, you, can, do, it, whatever, happens
 */
print(isPolindrom(word: "tacocattacocaT"))


