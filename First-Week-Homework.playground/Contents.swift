import Foundation
//================== 1. Question =================
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

//================== 2. Question =================

func calculateItemCount(items: [String]){
    var countOfItems: [String:Int] = [:]
    for item in items{
        countOfItems[item] = (countOfItems[item] ?? 0) + 1
    }
    print(countOfItems)
}
calculateItemCount(items: ["1","b","g","1","b","g","v","s"])

