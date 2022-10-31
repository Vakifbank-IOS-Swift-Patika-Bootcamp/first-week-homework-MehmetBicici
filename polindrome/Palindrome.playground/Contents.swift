import Foundation


func isPolindrom(word: String) -> Bool {
    var startIdx = 0
    var endIdx = word.count - 1
    var letterCharForward: Character
    var letterCharBack: Character
    while(startIdx < word.count) {
        var forwardIdx = word.index(word.startIndex, offsetBy: startIdx)
        var backIdx = word.index(word.startIndex, offsetBy: endIdx)
        letterCharForward = word[forwardIdx]
        letterCharBack = word[backIdx]
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
 - Polindrome Words : bib, nun, madam, racecar, cıvıc,deıfıed, level.
 - Not Polindrome Words : try, not, give, up, you, can, do, it, whatever, happens
 */
print(isPolindrom(word: "whatever"))


