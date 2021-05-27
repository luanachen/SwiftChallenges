//
//  Challenges.swift
//  Swift_Coding_Challenge
//
//  Created by Luana Chen Chih Jun on 20/04/21.
//
// Reference: https://www.hackingwithswift.com/store/swift-coding-challenges

import Foundation

class Challenges {
    
    // MARK: ------- CHAPTER 1 - STRINGS ------- //
    
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
    
    // MARK: ------- CHAPTER 2 - NUMBERS ------- //
    
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
    
    // 23 - Integer disguised as string
    static func isStringInt(_ input: String) -> Bool {
        //        return UInt64(input) != nil
        return input.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
    }
    
    // 24 - Add numbers inside a string *
    static func addNumbersOfString(_ input: String) -> Int {
        var currentNumberString = ""
        var sum = 0
        
        for char in input {
            if Int(String(char)) != nil {
                currentNumberString += String(char)
            } else {
                sum += Int(currentNumberString) ?? 0
                currentNumberString = ""
            }
        }
        
        sum += Int(currentNumberString) ?? 0
        
        return sum
    }
    
    // 25 - Calculate a square root by hand
    static func mySqrt(_ input: Int) -> Int {
        //        var result = 0
        //        for number in 0..<input {
        //            if number * number == input {
        //                result = number
        //            }
        //        }
        //        return result
        return Int(floor(pow(Double(input), 0.5)))
    }
    
    // 26 - Subtract without subtract
    static func mySubstract(subtract input1: Int, from input2: Int) -> Int {
        return (-input1 + input2)
    }
    
    // MARK: ------- CHAPTER 3 - FILES ------- //
    
    // 27 - Print last lines **
    static func printLastLines(_ input: String, lines N: Int) {
        var inputArray = input.components(separatedBy: "\n")
        inputArray.reverse()
        
        for i in 0 ..< min(inputArray.count, N) {
            print(inputArray[i])
        }
    }
    
    // 28 - Log a message
    // Write a logging function that accepts accepts a path to a log file on disk as well as a new log message. Your function should open the log file (or create it if it does not already exist), then append the new message to the log along with the current time and date.
    static func logAMessage(_ path: String, logMessage: String) {
        var existingLog = (try? String(contentsOfFile: path)) ?? ""
        
        existingLog += "\(Date()): \(logMessage)"
        
        do {
            try existingLog.write(toFile: path, atomically: true, encoding: .utf8)
        } catch {
            print("Failed to write to log: \(error.localizedDescription)")
        }
    }
    
    // 29 - Documents directory
    static func myDocDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    // 30 - New JPEGs
    static func newJPEGs(_ directory: String) -> [String] {
        let fm = FileManager.default
        let directoryURL = URL(fileURLWithPath: directory)
        
        guard let files = try? fm.contentsOfDirectory(at: directoryURL,
                                                      includingPropertiesForKeys: nil) else { return [] }
        
        var jpegs = [String]()
        
        for file in files {
            if file.pathExtension == "jpg" || file.pathExtension == "jpeg" {
                guard let attributes = try? fm.attributesOfItem(atPath: file.path) else { continue }
                guard let creationDate = attributes[.creationDate] as? Date else { continue }
                if creationDate > Date(timeIntervalSinceNow: -60 * 60 * 48) {
                    jpegs.append(file.lastPathComponent)
                }
            }
        }
        return jpegs
    }
    
    // 31 - Copy recursively
    static func copyRecursively(source: String, destination: String) -> Bool {
        let fm = FileManager.default
        var isDirectory: ObjCBool = false
        
        guard fm.fileExists(atPath: source, isDirectory: &isDirectory) ||
                isDirectory.boolValue == false else { return false }
        
        let sourceURL = URL(fileURLWithPath: source)
        let destionatoinURL = URL(fileURLWithPath: destination)
        
        do {
            try fm.copyItem(at: sourceURL, to: destionatoinURL)
        } catch {
            print("Copy failed: \(error.localizedDescription)")
            return false
        }
        
        return true
    }
    
    // 32 - Word frequency
    static func wordFrequency(filename: String, count: String) -> Int {
        guard let inputString = try? String(contentsOfFile: filename) else { return 0 }
        var nonLetters = CharacterSet.letters.inverted
        nonLetters.remove("'")
        
        let allWords = inputString.components(separatedBy: nonLetters)
        let wordSet = NSCountedSet(array: allWords)
    
        return wordSet.count(for: count)
    }
    
    // 33 - Find duplicate filenames
    static func findDuplicate(directory: String) -> [String] {
        let fm = FileManager.default
        let directoryUrl = URL(fileURLWithPath: directory)
        
        guard let files = fm.enumerator(at: directoryUrl,
                                        includingPropertiesForKeys: nil) else { return [] }
        
        var duplicates = Set<String>()
        var seen = Set<String>()
        
        for case let file as URL in files {
            guard file.hasDirectoryPath == false else { continue }
            
            let filename = file.lastPathComponent
            
            if seen.contains(filename) {
                duplicates.insert(filename)
            } else {
                seen.insert(filename)
            }
        }
        
        return Array(duplicates)
    }
    
    
    // TODO: 34 - 36
    
    // MARK: ------- CHAPTER 4 - Collections ------- //
}

extension Collection where Iterator.Element == Int {
    
    // 37 - Count the numbers
    func countTheNumbers(count: Character) -> Int {
        return self.reduce(0) {
            $0 + String($1).filter { char in char == count }.count
        }
    }
}

extension Collection where Iterator.Element: Comparable {
    
    // 38 - Find N smallest
    func smallest(count: Int) -> [Iterator.Element] {
        let sorted = self.sorted()
        return Array(sorted.prefix(count))
    }
}

extension Collection where Iterator.Element == String {
    
    // 39 - Sort a string array by length
    func sortByLength() -> [String] {
        return self.sorted { $0.count > $1.count }
    }
}

extension Challenges {
    // 40 - Missing numbers in array
    static func missingNumbers(_ input: [Int]) -> [Int] {
        let inputSet = Set(input)
        let correctSet = Set(1...100)
        
        return Array(correctSet.subtracting(inputSet)).sorted()
    }
    
    
    // Codility
    // given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.
    static func solution(_ A : [Int]) -> Int {
        let last = A.sorted().last ?? 0
        guard last > 0 else { return 1 }
        let correctSet = Set(1...last)
        let missingNum = correctSet.subtracting(Set(A)).sorted()
        return missingNum.first ?? last + 1
    }
}

extension Collection where Iterator.Element == Int {
    // 41 - Find the median
    func median() -> Double? {
        guard self.count > 0 else { return nil }
        let sorted = self.sorted()
        let middle = sorted.count/2
        
        if sorted.count % 2 == 0 {
            return Double(sorted[middle] + sorted[middle - 1]) / 2
        } else {
            return Double(sorted[middle])
        }
    }
}

extension Collection where Iterator.Element: Comparable {
 
    // 42 - Recreate index(of:)
    func myIndexOf(search: Int) -> Iterator.Element? {
        for (index, item) in self.enumerated() {
            if index == search {
                return item
            }
        }
        return nil
    }
}

extension Challenges {
    // 43 - Linked lists
    static func linkedAlphabets() {
        let list = LinkedList<Character>()
        var previousNode: LinkedListNode<Character>? = nil
        for letter in "abcdefghijklmnopqrstuvwxyz" {
            let node = LinkedListNode(value: letter)
            if let predecessor = previousNode {
                predecessor.next = node
            } else {
                list.start = node
            }
            previousNode = node
        }
        list.printNodes()
    }
    
    // 44 - Linked list mid-point
    static func linkedListMidPoint<T>(list: LinkedList<T>) -> T? {
        return list.middle()
    }
    
}

//-----------------------------------------------------------------//





