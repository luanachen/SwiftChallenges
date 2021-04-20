//
//  Challenges.swift
//  Swift_Coding_Challenge
//
//  Created by Luana Chen Chih Jun on 20/04/21.
//

import Foundation

class Challenges {

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
}
