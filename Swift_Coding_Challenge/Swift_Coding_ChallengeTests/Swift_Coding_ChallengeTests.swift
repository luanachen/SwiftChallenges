//
//  Swift_Coding_ChallengeTests.swift
//  Swift_Coding_ChallengeTests
//
//  Created by Luana Chen Chih Jun on 20/04/21.
//

import XCTest
@testable import Swift_Coding_Challenge

class Swift_Coding_ChallengeTests: XCTestCase {
    
    // MARK: ------- STRINGS ------- //
    
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
    
    // MARK: ------- CHAPTER 2 - NUMBERS ------- //
    
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
    
    // 23 - Integer disguised as string
    func test_isStringInt() {
        XCTAssertTrue(Challenges.isStringInt("01010101"))
        XCTAssertTrue(Challenges.isStringInt("123456789"))
        XCTAssertTrue(Challenges.isStringInt("9223372036854775808"))
        XCTAssertFalse(Challenges.isStringInt("1.01"))
    }
    
    // 24 - Add numbers inside a string
    func test_addNumbersOfString() {
        XCTAssertEqual(Challenges.addNumbersOfString("a1b2c3"), 6)
        XCTAssertEqual(Challenges.addNumbersOfString("a10b20c30"), 60)
        XCTAssertEqual(Challenges.addNumbersOfString("h8ers"), 8)
    }
    
    // 25 - Calculate a square root by hand
    func test_mySqrt() {
        XCTAssertEqual(Challenges.mySqrt(9), 3)
        XCTAssertEqual(Challenges.mySqrt(15), 3)
        XCTAssertEqual(Challenges.mySqrt(16777216), 4096)
        XCTAssertEqual(Challenges.mySqrt(16), 4)
    }
    
    // 26 - Subtract without subtract
    func test_mySubstract() {
        XCTAssertEqual(Challenges.mySubstract(subtract: 5, from: 9), 4)
        XCTAssertEqual(Challenges.mySubstract(subtract: 10, from: 30), 20)
    }
    
    // MARK: ------- CHAPTER 3 - FILES ------- //
    
    // 27 - Print last lines
    func test_printLastLines() {
        let file = """
Antony And Cleopatra
Coriolanus
Cymbeline
Hamlet
Julius Caesar
King Lear
Macbeth
Othello
Twelfth Night
"""
        
        Challenges.printLastLines(file, lines: 3)
        //        Challenges.printLastLines(file, lines: 100)
        //        Challenges.printLastLines(file, lines: 0)
    }
    
    // 28 - Log a message
    func test_logAMessage() {
        Challenges.logAMessage("myPath", logMessage: "my message")
    }
    
    // 29 - Documents directory
    func test_myDocDirectory() {
        XCTAssertNotNil(Challenges.myDocDirectory().absoluteString)
    }
    
    // 30 - New JPEGs
    func test_newJPEGs() {
        let files = Challenges.newJPEGs("")
        print(files)
    }
    
    // 31 - Copy recursively
    func test_CopyRecursively() {
        XCTAssertFalse(Challenges.copyRecursively(source: "", destination: ""))
    }
    
    // 32 - Word frequency
    func test_wordFrequency() {
        XCTAssertEqual(Challenges.wordFrequency(filename: "", count: "a"), 0)
    }
    
    // 33 - Find duplicate filenames
    func test_findDuplicate() {
       XCTAssertNil(Challenges.findDuplicate(directory: ""))
    }
    
    // TODO: 34 - 36
    
    // MARK: ------- CHAPTER 4 - Collections ------- //
    
    // 37 - Count the numbers
    func test_countTheNumbers() {
        XCTAssertEqual([5, 15, 55, 515].countTheNumbers(count: "5"), 6)
        XCTAssertEqual([5, 15, 55, 515].countTheNumbers(count: "1"), 2)
        XCTAssertEqual([55555].countTheNumbers(count: "5"), 5)
        XCTAssertEqual([55555].countTheNumbers(count: "1"), 0)
    }
    
    // 38 - Find N smallest
    func test_smallest() {
        XCTAssertEqual([1, 2, 3, 4].smallest(count: 3), [1, 2, 3])
        XCTAssertEqual(["q", "f", "k"].smallest(count: 10), ["f", "k", "q"])
        XCTAssertEqual([256, 16].smallest(count: 3), [16, 256])
        XCTAssertEqual([String]().smallest(count: 3), [])
    }
    
    // 39 - Sort a string array by length
    func test_sorteByLength() {
        XCTAssertEqual(["a", "abc", "ab"].sortByLength(), ["abc", "ab", "a"])
        XCTAssertEqual(["paul", "taylor", "adele"].sortByLength(), ["taylor", "adele", "paul"])
        XCTAssertEqual([String]().sortByLength(), [])
    }
    
    // 40 - Missing numbers in array
    func test_missingNumbers() {
        var correctArray = Array(1...100)
        correctArray.remove(at: 25)
        correctArray.remove(at: 20)
        correctArray.remove(at: 6)
        XCTAssertEqual(Challenges.missingNumbers(correctArray), [7, 21, 26])
    }
    
    // Codility
    func test_codility() {
        XCTAssertEqual(Challenges.solution([1, 3, 6, 4, 1, 2]), 5)
        XCTAssertEqual(Challenges.solution([1, 2, 3]), 4)
        XCTAssertEqual(Challenges.solution([-1, -3]), 1)
    }
    
    // 41 - Find the median
    func test_median() {
        XCTAssertEqual([1, 3, 5, 7, 9].median(), 5)
        XCTAssertEqual([1, 2, 3, 4].median(), 2.5)
        XCTAssertEqual([1, 2, 3].median(), 2)
        XCTAssertNil([Int]().median())
    }
    
    // 42 - Recreate index(of:)
    func test_myIndexOf() {
        XCTAssertEqual([1, 3, 5, 7, 9].myIndexOf(search: 1), 3)
        XCTAssertEqual([1, 3, 5, 7, 9].myIndexOf(search: 9), nil)
    }
    
    // 43 - Linked lists
    func test_linkedAlphabets() {
        Challenges.linkedAlphabets()
    }
    
    // 44 - Linked list mid-point
    func test_linkedListMiddlePoint() {
        let list = LinkedList<Int>()
        list.start = LinkedListNode(value: 1)
        list.start?.next = LinkedListNode(value: 2)
        list.start?.next?.next = LinkedListNode(value: 3)
        list.start?.next?.next?.next = LinkedListNode(value: 4)
        list.start?.next?.next?.next?.next = LinkedListNode(value: 5)
        
        XCTAssertEqual(Challenges.linkedListMidPoint(list: list), 3)
    }
    
    // TODO 45 - Traversing the tree
    
    // 46 - Recreate map() **
    func test_myMap() {
        XCTAssertEqual([1, 2, 3].myMap { String($0)}, ["1", "2", "3"])
    }
    
    // 47 - Recreate min()
    func test_myMin() {
        XCTAssertEqual([1, 2, 3].myMin(), 1)
        XCTAssertEqual(["q", "f", "k"].myMin(), "f")
        XCTAssertEqual([4096, 256, 16].myMin(), 16)
        XCTAssertEqual([String]().myMin(), nil)
    }
    
    // TODO: 48: Implement a deque data structure

    
    // 49 - Sum the even repeats
    func test_sumEvenRepeats() {
        XCTAssertEqual(Challenges.sumEvenRepeats(1, 2, 2, 3, 3, 4), 5)
        XCTAssertEqual(Challenges.sumEvenRepeats(5, 5, 5, 12, 12), 12)
        XCTAssertEqual(Challenges.sumEvenRepeats(1, 1, 2, 2, 3, 3, 4, 4), 10)
    }
}
