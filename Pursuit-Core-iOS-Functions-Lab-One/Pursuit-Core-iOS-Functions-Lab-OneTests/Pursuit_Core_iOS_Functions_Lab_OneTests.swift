import XCTest
@testable import Pursuit_Core_iOS_Functions_Lab_One

class Pursuit_Core_iOS_Functions_Lab_OneTests: XCTestCase {
    
    struct SingleInputTestCase<Input, Output> {
        let input: Input
        let expectedOutput: Output
    }
    
    struct TwoInputTestCase<InputOne, InputTwo, Output> {
        let inputOne: InputOne
        let inputTwo: InputTwo
        let expectedOutput: Output
    }

    
    func testDouble() {
        let testCases = [
            SingleInputTestCase(input: 3.0, expectedOutput: 6.0),
            SingleInputTestCase(input: 0, expectedOutput: 0),
            SingleInputTestCase(input: -2, expectedOutput: -4),
            SingleInputTestCase(input: 99, expectedOutput: 198)
        ]
        for testCase in testCases {
            let output = double(testCase.input)
            XCTAssertEqual(output, testCase.expectedOutput, "Was expecting \(testCase.expectedOutput) for input \"\(testCase.input)\", but got \(output)")
        }
    }
    func testMin() {
        let testCases = [
            TwoInputTestCase(inputOne: 8.0, inputTwo: 3.0, expectedOutput: 3.0),
            TwoInputTestCase(inputOne: 0, inputTwo: 0, expectedOutput: 0),
            TwoInputTestCase(inputOne: -5, inputTwo: -3, expectedOutput: -5),
            TwoInputTestCase(inputOne: 2.3, inputTwo: 2.03, expectedOutput: 2.03)
        ]
        for testCase in testCases {
            let output = min(testCase.inputOne, testCase.inputTwo)
            XCTAssertEqual(output, testCase.expectedOutput, "Was expecting \(testCase.expectedOutput) for inputs \"\(testCase.inputOne)\" and \"\(testCase.inputTwo)\", but got \(output)")
        }
    }
    func testSmallestValue() {
        let testCases = [
            SingleInputTestCase(input: [1.0,2,3,4,5,5], expectedOutput: 1.0),
            SingleInputTestCase(input: [6,5,4,3,2,1], expectedOutput: 1),
            SingleInputTestCase(input: [0,0,0,0,0,0,0,0,0,0], expectedOutput: 0),
            SingleInputTestCase(input: [-4,-59,-348,-34,-4], expectedOutput: -348),
        ]
        for testCase in testCases {
            let output = smallestValue(in: testCase.input)
            XCTAssertEqual(output, testCase.expectedOutput, "Was expecting \(testCase.expectedOutput) for input \"\(testCase.input)\", but got \(output)")
        }
    }
    func testOccurrances() {
        let testCases: [TwoInputTestCase<String, Character, Int>] = [
            TwoInputTestCase(inputOne: "hello", inputTwo: "l", expectedOutput: 2),
            TwoInputTestCase(inputOne: "hello world!", inputTwo: "r", expectedOutput: 1),
            TwoInputTestCase(inputOne: "Now with some spaces", inputTwo: " ", expectedOutput: 3),
            TwoInputTestCase(inputOne: "cApItAlS aRe DiFfErEnT", inputTwo: "E", expectedOutput: 2),
        ]
        for testCase in testCases {
            let output = occurrances(of: testCase.inputTwo, in: testCase.inputOne)
            XCTAssertEqual(output, testCase.expectedOutput, "Was expecting \(testCase.expectedOutput) for inputs \"\(testCase.inputOne)\" and \"\(testCase.inputTwo)\", but got \(output)")
        }
    }
    func testRemoveNils() {
        let testCases = [
            SingleInputTestCase(input: [1, nil, 9, nil, 10, nil], expectedOutput: [1,9,10]),
            SingleInputTestCase(input: [1, 2, 3], expectedOutput: [1,2,3]),
            SingleInputTestCase(input: [nil], expectedOutput: []),
            SingleInputTestCase(input: [], expectedOutput: []),
        ]
        for testCase in testCases {
            let output = removeNils(from: testCase.input)
            XCTAssertEqual(output, testCase.expectedOutput, "Was expecting \(testCase.expectedOutput) for input \"\(testCase.input)\", but got \(output)")
        }
    }
    func testFrequencyDictionary() {
        let testCases: [SingleInputTestCase<String, [Character: Int]>] = [
            SingleInputTestCase(input: "hello", expectedOutput: ["h": 1, "e": 1, "l": 2, "o": 1]),
            SingleInputTestCase(input: "aaaaaAAA", expectedOutput: ["a": 5, "A":3]),
            SingleInputTestCase(input: "More words", expectedOutput: ["M": 1, "o": 2, "r": 2, "e": 1, " ": 1, "w": 1, "d": 1, "s": 1])
        ]
        for testCase in testCases {
            let output = frequencyDictionary(of: testCase.input)
            XCTAssertEqual(output, testCase.expectedOutput, "Was expecting \(testCase.expectedOutput) for input \"\(testCase.input)\", but got \(output)")
        }
    }
    func testUniqueCharacters() {
        let testCases: [SingleInputTestCase<String, [Character]>] = [
            SingleInputTestCase(input: "hello", expectedOutput: ["h", "e", "o"]),
            SingleInputTestCase(input: "goodbye", expectedOutput: ["g", "d", "b", "y", "e"]),
            SingleInputTestCase(input: "abcabcd", expectedOutput: ["d"]),
            SingleInputTestCase(input: "", expectedOutput: []),
        ]
        for testCase in testCases {
            let output = uniqueCharacters(in: testCase.input)
            XCTAssertEqual(output, testCase.expectedOutput, "Was expecting \(testCase.expectedOutput) for input \"\(testCase.input)\", but got \(output)")
        }
    }
    func testIsPalindrome() {
        let testCases = [
            SingleInputTestCase(input: "racecar", expectedOutput: true),
            SingleInputTestCase(input: "cup", expectedOutput: false),
            SingleInputTestCase(input: "no lava on avalon no lava no avalon", expectedOutput: true),
            SingleInputTestCase(input: "Ten animals slam in a net", expectedOutput: true),
            SingleInputTestCase(input: "Some random words", expectedOutput: false),
            SingleInputTestCase(input: "Flee to me, remote elf", expectedOutput: true)
        ]
        for testCase in testCases {
            let output = isPalindrome(str: testCase.input)
            XCTAssertEqual(output, testCase.expectedOutput, "Was expecting \(testCase.expectedOutput) for input \"\(testCase.input)\", but got \(output)")
        }
    }
    func testRotOneEncrypt() {
        let testCases = [
            SingleInputTestCase(input: "Hello World!", expectedOutput: "Ifmmp Xpsme!"),
            SingleInputTestCase(input: "Secret Message", expectedOutput: "Tfdsfu Nfttbhf"),
            SingleInputTestCase(input: "This is also a secret message", expectedOutput: "Uijt jt bmtp b tfdsfu nfttbhf"),
        ]
        for testCase in testCases {
            let output = rotOneEncrypt(testCase.input)
            XCTAssertEqual(output, testCase.expectedOutput, "Was expecting \(testCase.expectedOutput) for input \"\(testCase.input)\", but got \(output)")
        }
    }
}
