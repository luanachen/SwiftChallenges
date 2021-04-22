//
//  Challenges.swift
//  Swift_Coding_Challenge
//
//  Created by Luana Chen Chih Jun on 20/04/21.
//

import Foundation

class Challenges {

    // ------- STRINGS ------- //

    // UNIQUE LETTERS
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

    // PALINDROME
//    static func isPalindrome(_ string: String) -> Bool {
//        return string.lowercased() == String(string.reversed()).lowercased()
//    }

    // or

    static func isPalindrome(_ string: String) -> Bool {
        let lowercase = string.lowercased()
        return lowercase.reversed() == Array(lowercase)
    }

    //-----------------------------------------------------------------//

}




