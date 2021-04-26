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

}
