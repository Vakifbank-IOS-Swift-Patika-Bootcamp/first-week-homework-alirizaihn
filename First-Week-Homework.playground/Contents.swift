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

//================== 2. Question =================

func calculateItemCount(items: [String]){
    var countOfItems: [String:Int] = [:]
    for item in items{
        countOfItems[item] = (countOfItems[item] ?? 0) + 1
    }
    print(countOfItems)
}


//=============== 3 - 4 Question ====================

func createTree(rowCount:Int){
    var space = rowCount
    for i in 1...rowCount {
//       ================ 4 Question ====================
        for k in 1...space{
            print(" " ,terminator: "")
        }
//      =================================================
        for p in 1...i {
            print("*",terminator: " ")
        }
        space -= 1
        print("\r")
    }
}

// ============== 5.Question =================

// 5.3 Question

func isPrimeNumber(candidateNumber:Int) -> Bool{
    var result = true
    if candidateNumber <= 1{
        return false
    }
    if candidateNumber != 2 {
        for i in 2..<candidateNumber{
            if candidateNumber % i == 0 {
                return false
            }
        }
    }
    return result
}

func findLargestPrimeFactor(numberExample:Int){
    var resultNumber = numberExample
    var divisorsSet: Set<Int> = []
    while(resultNumber > 1){
        for i in 2...resultNumber{
            if resultNumber % i == 0{
                resultNumber = resultNumber / i
                if(isPrimeNumber(candidateNumber: i)){
                    divisorsSet.insert(i)
                }
                break
            }
            else {
                continue
            }
        }
    }
    var divisorsNumberArray = divisorsSet.sorted()
    let largetFactor = divisorsNumberArray[divisorsNumberArray.count-1]
    print("Largest prime factor is \(largetFactor)")
    
}
/*Qestion 1 => */
checkPalindrome(word: "Veliilev")
/*Qestion 2 => */
calculateItemCount(items: ["1","b","g","1","b","g","v","s"])
/*Qestion 3 - 4 => */
createTree(rowCount: 4)
/*Qestion 5.1 => */
/*Qestion 5.2 => */
/*Qestion 5.3 => */
findLargestPrimeFactor(numberExample: 600851475143)


