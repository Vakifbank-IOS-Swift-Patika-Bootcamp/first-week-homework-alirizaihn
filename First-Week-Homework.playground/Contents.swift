import Foundation

func checkPalindrome(word:String){
    let wordLength = word.count
    let lowerCaseWord = word.lowercased()
    let charSet = Array(lowerCaseWord)
    for i in 0..<wordLength{
        if charSet[i] != charSet[wordLength - 1 - i]{
            print("\(word) isn't palindrome")
            break
        }
        else {
            print("\(word) is palindrome")
            break
        }
    }
}
checkPalindrome(word: "Veliilev")
