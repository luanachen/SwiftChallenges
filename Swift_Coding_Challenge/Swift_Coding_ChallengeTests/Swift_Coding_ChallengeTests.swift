//
//  Swift_Coding_ChallengeTests.swift
//  Swift_Coding_ChallengeTests
//
//  Created by Luana Chen Chih Jun on 20/04/21.
//

import XCTest
@testable import Swift_Coding_Challenge

class Swift_Coding_ChallengeTests: XCTestCase {
    
    // ------- STRINGS ------- //
    
    // 1 - UNIQUE LETTERS
    func test_uniqueLetters() {
        XCTAssertTrue(Challenges.hasUniqueLetters("no duplicates"))
        XCTAssertTrue(Challenges.hasUniqueLetters("abcdefghijklmnopqrstuvwxyz"))
        XCTAssertTrue(Challenges.hasUniqueLetters("AaBbCc"))
        XCTAssertFalse(Challenges.hasUniqueLetters("Hello, world"))
    }
    
    func test_hasUniqueLettersWithSet() {
        XCTAssertTrue(Challenges.hasUniqueLettersWithSet("no duplicates"))
        XCTAssertTrue(Challenges.hasUniqueLettersWithSet("abcdefghijklmnopqrstuvwxyz"))
        XCTAssertTrue(Challenges.hasUniqueLettersWithSet("AaBbCc"))
        XCTAssertFalse(Challenges.hasUniqueLettersWithSet("Hello, world"))
    }
    
    // 2 - PALINDROME
    func test_isPalindrome() {
        XCTAssertTrue(Challenges.isPalindrome("rotator"))
        XCTAssertTrue(Challenges.isPalindrome("Rats live on no evil star"))
        XCTAssertFalse(Challenges.isPalindrome("Never odd or even"))
        XCTAssertFalse(Challenges.isPalindrome("Hello, world"))
    }
    
    // 3 - Do two strings contain the same characters?
    func test_hasSameChars() {
        XCTAssertTrue(Challenges.hasSameChars("abca", "abca"))
        XCTAssertTrue(Challenges.hasSameChars("abc", "cba"))
        XCTAssertTrue(Challenges.hasSameChars("a1 b2", "b1 a2"))
        XCTAssertFalse(Challenges.hasSameChars("abc", "abca"))
        XCTAssertFalse(Challenges.hasSameChars("abc", "Abc"))
        XCTAssertFalse(Challenges.hasSameChars("abc", "cbAa"))
    }
    
    // 4 - Does one string contain another?
    func test_fuzzContains() {
        XCTAssertTrue("Hello, world".fuzzyContains("Hello"))
        XCTAssertTrue("Hello, world".fuzzyContains("WORLD"))
        XCTAssertFalse("Hello, world".fuzzyContains("Goodbye"))
    }
    
    // 5 - Count the characters
    func test_countChar() {
        XCTAssertEqual(Challenges.countChar("a", in: "The rain in Spain"), 2)
        XCTAssertEqual(Challenges.countChar("i", in: "Mississippi"), 4)
        XCTAssertEqual(Challenges.countChar("i", in: "Hacking with Swift"), 3)
        XCTAssertEqual(Challenges.countChar("z", in: "Hacking with Swift"), 0)
    }
    
    // 6 - Remove duplicate letters from a string
    func test_removeDuplicate() {
        XCTAssertEqual(Challenges.removeDuplicate("wombat"), "wombat")
        XCTAssertEqual(Challenges.removeDuplicate("hello"), "helo")
        XCTAssertEqual(Challenges.removeDuplicate("Mississippi"), "Misp")
    }
    
    // 7 - Condense whitespace
    func test_condenseWhiteSpace() {
        XCTAssertEqual(Challenges.condenseWhiteSpace("a    b    c"), "a b c")
        XCTAssertEqual(Challenges.condenseWhiteSpace("     a"), " a")
        XCTAssertEqual(Challenges.condenseWhiteSpace("abc"), "abc")
    }
    
    // 8 - String is rotated
    func test_isStringRotated() {
        XCTAssertTrue(Challenges.isStringRotated("abcde", "eabcd"))
        XCTAssertTrue(Challenges.isStringRotated("abcde", "cdeab"))
        XCTAssertFalse(Challenges.isStringRotated("abcde", "abced"))
        XCTAssertFalse(Challenges.isStringRotated("abc", "a"))
        XCTAssertFalse(Challenges.isStringRotated("swift", "tswi"))
    }
    
    // 9 - Find pangrams
    func test_isPangram() {
        XCTAssertTrue(Challenges.isPangram("The quick brown fox jumps over the lazy dog"))
        XCTAssertFalse(Challenges.isPangram("The quick brown fox jumped over the lazy dog"))
    }
    
    // 10 - Vowels and consonants
    func test_countVowelsAndConsonants() {
        XCTAssertTrue(Challenges.countVowelsAndConsonants("Swift Coding Challenges") == (6, 15))
        XCTAssertTrue(Challenges.countVowelsAndConsonants("Mississippi") == (4, 7))
    }
    
    // 11 - Three different letters
    func test_isSimilar() {
        XCTAssertTrue(Challenges.isSimilar("Clamp", "Cramp"))
        XCTAssertTrue(Challenges.isSimilar("Clamp", "Crams"))
        XCTAssertTrue(Challenges.isSimilar("Clamp", "Grams"))
        XCTAssertFalse(Challenges.isSimilar("Clamp", "Grans"))
        XCTAssertFalse(Challenges.isSimilar("Clamp", "Clam"))
        XCTAssertFalse(Challenges.isSimilar("Clamp", "maple"))
    }
    
    // 12 - Find longest prefix
    func test_longestPrefix() {
        XCTAssertEqual(Challenges.longestPrefix("swift switch swill swim"), "swi")
        XCTAssertEqual(Challenges.longestPrefix("flip flap flop"), "fl")
    }
    
    // 13 - Run-length encoding
    func test_runLengthEncoding() {
        XCTAssertEqual(Challenges.runLengthEncoding("aabbcc"), "a2b2c2")
        XCTAssertEqual(Challenges.runLengthEncoding("aaabaaabaaa"), "a3b1a3b1a3")
        XCTAssertEqual(Challenges.runLengthEncoding("aaAAaa"), "a2A2a2")
    }
    
    // 14 - String permutations
    func test_stringPermutation() {
        Challenges.stringPermutation("ab")
    }
    
    // 15 - Reverse the words in a string
    func test_reverseWords() {
        XCTAssertEqual(Challenges.reverseWords("Swift Coding Challenges"), "tfiwS gnidoC segnellahC")
        XCTAssertEqual(Challenges.reverseWords("The quick brown fox"), "ehT kciuq nworb xof")
    }
    
    // 16 - Fizz Buzz
    func test_fizzBuzz() {
        Challenges.fizzBuzz()
    }
    
    // 17 - Generate a random number in a range
    func test_generateRandomNumber() {
        Challenges.generateRandomNumber(5, 10)
        print("*********")
        Challenges.generateRandomNumber(1, 3)
        print("*********")
        Challenges.generateRandomNumber(0, 5)
        print("*********")
        Challenges.generateRandomNumber(12, 12)
    }
    
    // 18 - Recreate the pow() function
    func test_myPow() {
        XCTAssertEqual(Challenges.myPow(4, 3), 64)
        XCTAssertEqual(Challenges.myPow(2, 8), 256)
    }
    
    // 19 - Swap two numbers
    func test_swapTwoNumbers() {
        XCTAssertTrue(Challenges.swapTwoNumbers((1, 2)) == (2, 1))
    }
    
    // 20 - Number is prime
    func test_numberIsPrime() {
        XCTAssertTrue(Challenges.numberIsPrime(11))
        XCTAssertTrue(Challenges.numberIsPrime(13))
        XCTAssertFalse(Challenges.numberIsPrime(4))
        XCTAssertFalse(Challenges.numberIsPrime(9))
        XCTAssertTrue(Challenges.numberIsPrime(16777259))
    }
    
    // 21 - Counting binary ones
    func test_challenge21() {
        XCTAssertTrue(Challenges.challenge21(12) == (17, 10))
        XCTAssertTrue(Challenges.challenge21(28) == (35, 26))
    }
    
    // 22 - Binary reverse
    func test_binaryReverse() {
        XCTAssertEqual(Challenges.binaryReverse(32), 4)
        XCTAssertEqual(Challenges.binaryReverse(41), 148)
        XCTAssertEqual(Challenges.binaryReverse(148), 41)
    }
    
}
