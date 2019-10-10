import Foundation

// Question One

// Write a function that takes in a Double and returns that number times two

func double(_ num: Double) -> Double {
    return num * 2
}
// Question Two

// Write a function that takes in two Doubles and returns the smaller number

func min(_ numOne: Double, _ numTwo: Double) -> Double {
    var min = 0.0
    if numOne < numTwo {
        min = numOne
    } else {
        min = numTwo
    }
    return min
}

// Question Three

// Write a function that takes in an array of Doubles and returns the smallest Double

func smallestValue(in arr: [Double]) -> Double {
    return arr.min() ?? 0
}

// Question Four

// Write a function that counts how many characters in a String match a specific character.

func occurrances(of char: Character, in str: String) -> Int {
    var count = 0
    for character in str {
        if character == char {
            count += 1
        }
    }
    return count
}

// Question Five

// Write a function called  that takes an array of optional Ints and returns an array with them unwrapped with any nil values removed.

func removeNils(from arr: [Int?]) -> [Int] {
    var nilFreeArray = [Int]()
    for num in arr {
        if let number = num {
            nilFreeArray.append(number)
        }
    }
    return nilFreeArray
}

// Question Six

// Write a function that takes a String as input and returns a dictionary that maps each character its number of occurrances

func frequencyDictionary(of str: String) -> [Character: Int] {
    var frequencyDictionary = [Character: Int]()
    for char in str {
        frequencyDictionary[char] = (frequencyDictionary[char] ?? 0) + 1
    }
    return frequencyDictionary
}


// Question Seven

// Write a function that returns all of the unique Characters in a String.

func uniqueCharacters(in str: String) -> [Character] {

    return Array(Set(str))
}



// Question Eight

// Write a function that checks if a String is a palindrome (the same backwards and forwards).
// Bonus: Do not use the built in .reverse() or .reversed() methods.  Ignore whitespaces, capitalization, and punctuation.

func isPalindrome(str: String) -> Bool {
    let string = str.lowercased()
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var reversedString = ""
    for char in string where alphabet.contains(char) {
        reversedString = String(char) + reversedString
    }
    let isPalindrome = string == reversedString ? true : false
    return isPalindrome
}

