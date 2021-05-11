//
//  Challenges.swift
//  Swift_Coding_Challenge
//
//  Created by Luana Chen Chih Jun on 20/04/21.
//
// Reference: https://www.hackingwithswift.com/store/swift-coding-challenges

import Foundation

class Challenges {
    
    // ------- CHAPTER 1 - STRINGS ------- //
    
    // 1 - UNIQUE LETTERS
    static func hasUniqueLetters(_ string: String) -> Bool {
        var myString = ""
        
        for char in string {
            if myString.contains(char) {
                return false
            } else {
                myString.append(char)
            }
        }
        return true
    }
    
    // For best perfomance use Set
    // Sets cannot contain duplicate items, so if we create a set from the input string then the count of the set will equal the count of the input if there are no duplicates.
    
    static func hasUniqueLettersWithSet(_ string: String) -> Bool {
        return Set(string).count == string.count
    }
    
    // 2 - PALINDROME
    static func isPalindrome(_ string: String) -> Bool {
        let lowercase = string.lowercased()
        return lowercase.reversed() == Array(lowercase)
    }
    
    // 3 - Do two strings contain the same characters?
    static func hasSameChars(_ str1: String, _ str2: String) -> Bool {
        return Array(str1).sorted() == Array(str2).sorted()
    }
}

// 4 - Does one string contain another?
extension String {
    func fuzzyContains(_ str: String) -> Bool {
        return range(of: str, options: .caseInsensitive) != nil
    }
    
}

extension Challenges {
    
    // 5 - Count the characters
    static func countChar(_ char: Character, in string: String) -> Int {
        return string.filter { $0 == char }.count
        // alternative:
        // string.reduce(0) { $1 == char ? $0 + 1 : $0 }
    }
    
    // 6 - Remove duplicate letters from a string
    static func removeDuplicate(_ str: String) -> String {
        var result = [Character]()
        
        for char in str {
            if !result.contains(char) {
                result.append(char)
            }
        }
        return String(result)
    }
    
    // 7 - Condense whitespace
    static func condenseWhiteSpace(_ str: String) -> String {
        //        var result = ""
        //        var seenSpace = false
        //
        //        if !str.contains(" ") { return str }
        //
        //        for char in str {
        //            if char == " " {
        //                if seenSpace == false {
        //                    result.append(char)
        //                    seenSpace = true
        //                }
        //            } else {
        //                seenSpace = false
        //                result.append(char)
        //            }
        //        }
        //
        //        return result
        
        return str.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
        //  “[space]+” means “match one or more spaces”, so that will cause all multiple spaces to be replaced with a single space
    }
    
    // 8 - String is rotated
    static func isStringRotated(_ str1: String, _ rotated: String) -> Bool {
        guard str1.count == rotated.count else { return false }
        
        // if you write a string twice it must always encapsulate all possible rotations
        // abcabc
        let combined = str1 + str1
        return combined.contains(rotated)
    }
    
    // 9 - Find pangrams
    static func isPangram(_ str: String) -> Bool {
        //        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        //        let cleaned = Set(str.lowercased().replacingOccurrences(of: " ", with: "")).sorted()
        //        return String(cleaned) == alphabet
        
        let set = Set(str)
        let letters = set.filter { $0 >= "a" && $0 <= "z" }
        return letters.count == 26
    }
    
    // 10 - Vowels and consonants
    static func countVowelsAndConsonants(_ str: String) -> (Int, Int) {
        let myStr = str.uppercased().replacingOccurrences(of: " ", with: "")
        let vowels = "A, E, I, O, U"
        var vowelsCount = 0
        var consonantCount = 0
        
        for char in myStr {
            if vowels.contains(char) {
                vowelsCount += 1
            } else {
                consonantCount += 1
            }
        }
        
        return (vowelsCount, consonantCount)
    }
    
    // 11 - Three different letters
    static func isSimilar(_ input1: String, _ input2: String) -> Bool {
        guard input1.count == input2.count else { return false }
        let firstArray = Array(input1)
        let secondArray = Array(input2)
        var differences = 0
        
        for (index, char) in firstArray.enumerated() {
            if secondArray[index] != char {
                differences += 1
            }
            
            if differences == 4 {
                return false
            }
        }
        
        return true
    }
    
    // 12 - Find longest prefix *
    static func longestPrefix(_ input: String) -> String {
        let array = input.components(separatedBy: " ")
        guard let first = array.first else { return "" }
        var longestPrefix = ""
        var currentPrefix = ""
        
        for letter in first {
            currentPrefix.append(letter)
            
            for words in array {
                if !words.hasPrefix(currentPrefix) {
                    return longestPrefix
                }
            }
            longestPrefix = currentPrefix
        }
        
        return longestPrefix
    }
    
    // 13 - Run-length encoding
    static func runLengthEncoding(_ input: String) -> String {
        var result = ""
        guard var currentChar = input.first else { return  "" }
        var currentCharCount = 0
        
        for char in input {
            if char != currentChar {
                result = result + String(currentChar) + String(currentCharCount)
                currentChar = char
                currentCharCount = 1
            } else {
                currentCharCount += 1
            }
        }
        
        result = result + String(currentChar) + String(currentCharCount)
                
        return result
    }
    
    // 14 - String permutations **
    static func stringPermutation(_ input: String, current: String = "") {
        let inputArray = Array(input)
        
        if inputArray.count == 0 {
            print(current)
        } else {
            for i in 0..<inputArray.count { //ab
                let left = String(inputArray[0..<i]) //"" //""
                let right = String(inputArray[i+1..<inputArray.count]) //b //""
                stringPermutation(left+right, current: current+String(inputArray[i])) //a //ab
            }
        }
    }
    
    // 15 - Reverse the words in a string
    static func reverseWords(_ input: String) -> String {
        let inputArray = input.components(separatedBy: " ")
        let result = inputArray.map { $0.reversed() }.joined(separator: " ")
        return String(result)
    }
    
    // ------- CHAPTER 2 - NUMBERS ------- //
    
    // 16 - Fizz Buzz
    static func fizzBuzz() {
        for i in 1...100 {
            if i % 15 == 0 {
                print("FizzBuzz")
            } else if i % 3 == 0 {
                print("Fizz")
            } else if i % 5 == 0 {
                print("Buzz")
            } else {
                print("\(i)")
            }
        }
    }
    
    // 17 - Generate a random number in a range
    static func generateRandomNumber(_ min: Int, _ max: Int){
        print(Int(arc4random_uniform(UInt32(max - min + 1))) + min)
    }
    
    // 18 - Recreate the pow() function
    static func myPow(_ input: Int, _ power: Int) -> Int {
//        return Int(pow(Double(input), Double(power)))
        guard input > 0, power > 0 else { return 0 }
        var result = input
        
        for _ in 1..<power {
            result *= input
        }
        
        return result
    }
    
    // 19 - Swap two numbers
    static func swapTwoNumbers(_ input: (Int, Int)) -> (Int, Int) {
        return (input.1, input.0)
    }
    
    // 20 - Number is prime
    static func numberIsPrime(_ input: Int) -> Bool {
//        guard input >= 2 else { return false }
//
//        for i in 2..<input {
//            if input % i == 0 {
//                return false
//            }
//        }
//
//        return true
        
        // efective way to deal with large numbers
        guard input >= 2 else { return false }
        guard input != 2 else { return true }
        
        let max = Int(ceil(sqrt(Double(input))))
        
        for i in 2 ... max {
            if input % i == 0 {
                return false
            }
        }
        
        return true
    }
    
    // 21 - Counting binary ones
    // Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.
    static func challenge21(_ input: Int) -> (nextHighest: Int?, nextLowest: Int?) {
        
        let inputBinary = String(input, radix: 2)
        let targetOnes = inputBinary.filter { $0 == "1" }.count
        var nextHighest: Int? = nil
        var nextLowest: Int? = nil
        
        for i in input + 1 ... Int.max {
            let currentBinary = String(i, radix: 2)
            let currentOnes = currentBinary.filter { $0 == "1" }.count
            
            if targetOnes == currentOnes {
                nextHighest = i
                break
            }
        }
        
        for i in (0..<input).reversed() {
            let currentBinary = String(i, radix: 2)
            let currentOnes = currentBinary.filter { $0 == "1" }.count
            
            if targetOnes == currentOnes {
                nextLowest = i
                break
            }
        }
        
        return (nextHighest, nextLowest)
    }
    
    // 22 - Binary reverse
    static func binaryReverse(_ input: Int) -> Int {
        let inputBinary = String(input, radix: 2)
        let paddingAmount = 8 - inputBinary.count
        
        let paddedBinary = String(repeating: "0", count: paddingAmount) + inputBinary
        let reversed = String(paddedBinary.reversed())
        
        return Int(reversed, radix: 2) ?? 0
    }
}


//-----------------------------------------------------------------//





