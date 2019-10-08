import Foundation

// Question One

// Write a function that takes in a Double and returns that number times two

func double(_ num: Double) -> Double {
    return num * 2
}

// Question Two

// Write a function that takes in two Doubles and returns the smaller number

func min(_ numOne: Double, _ numTwo: Double) -> Double {
    if numOne > numTwo {
        return numTwo
    } else {
        return numOne
    }
}

// Question Three

// Write a function that takes in an array of Doubles and returns the smallest Double

func smallestValue(in arr: [Double]) -> Double {
    var smallestDouble: Double = -1
    if !arr.isEmpty {
        smallestDouble = arr[0]
    }
    
    for a in arr{
        if a <= smallestDouble{
            smallestDouble = a
        }
    }
    return smallestDouble
}

// Question Four

// Write a function that counts how many characters in a String match a specific character.

func occurrances(of char: Character, in str: String) -> Int {
    var timesCharMatched = 0
    
    for s in str{
        if s == char{
            timesCharMatched += 1
        }
    }
    return timesCharMatched
}

// Question Five

// Write a function called removeNils that takes an array of optional Ints and returns an array with them unwrapped with any nil values removed.

func removeNils(from arr: [Int?]) -> [Int] {
    var intArray: [Int] = []
    
    for a in arr{
        if let notNil = a{
            intArray.append(notNil)
        }
    }
    
    return intArray
}

// Question Six

// Write a function that takes a String as input and returns a dictionary that maps each character to its number of occurrences

func frequencyDictionary(of str: String) -> [Character: Int] {
    var charOccurrence: [Character:Int] = [:]
    
    for s in str{
        charOccurrence.updateValue(0,forKey:s)
    }
    
    for s in str{
        charOccurrence.updateValue((charOccurrence[s] ?? 0) + 1,forKey: s)
    }
    
    return charOccurrence
}


// Question Seven

// Write a function that returns all of the unique Characters in a String.

func uniqueCharacters(in str: String) -> [Character] {
    var charSet: Set<Character> = []
    var charSetDoubles: Set<Character> = []
    var uniqueCharacters: [Character] = []
    var setTuple: (Bool,Character)
    
    for s in str{
        setTuple = charSet.insert(s)
        if !setTuple.0{
            charSetDoubles.insert(setTuple.1)
        }
    }
    
    for s in str{
        if !charSetDoubles.contains(s) {
            uniqueCharacters.append(s)
        }
    }
    
    return uniqueCharacters
}



// Question Eight

// Write a function that checks if a String is a palindrome (the same backwards and forwards).
// Bonus: Do not use the built in .reverse() or .reversed() methods.  Ignore whitespaces, capitalization, and punctuation.

func isPalindrome(str: String) -> Bool {
    var reversedString = ""
    var isAPalindrome = true
    let tempString = str
    var trimmedString: String = ""
    var offSet = 0
    var currentIndex: String.Index = trimmedString.index(trimmedString.startIndex,offsetBy:offSet)
    
    for char in tempString{
        if (char.isPunctuation || char.isWhitespace) {
            continue
        }
        trimmedString += String(char)
    }
    
    for s in trimmedString{
        reversedString = String(s) + reversedString
    }
    
    for char in reversedString{
        if(char.lowercased() != trimmedString[currentIndex].lowercased()){
            isAPalindrome = false
        }
        offSet += 1
        currentIndex = trimmedString.index(trimmedString.startIndex,offsetBy:offSet)
    }
    return isAPalindrome
}
