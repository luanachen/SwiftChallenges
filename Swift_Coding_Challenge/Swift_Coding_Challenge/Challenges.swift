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

    //-----------------------------------------------------------------//





