//
//  Challenges.swift
//  Swift_Coding_Challenge
//
//  Created by Luana Chen Chih Jun on 20/04/21.
//
// Reference: https://www.hackingwithswift.com/store/swift-coding-challenges

import Foundation

class Challenges {

    // ------- STRINGS ------- //

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
    
}


    //-----------------------------------------------------------------//





