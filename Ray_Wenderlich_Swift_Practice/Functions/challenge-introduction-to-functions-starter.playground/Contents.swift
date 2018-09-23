/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

/*:
 ### INTRODUCTION TO FUNCTIONS
 
 Write a function named `printFullName` that takes two strings called `firstName` and `lastName`.  The function should print out the full name defined as `firstName` + " " + `lastName`. Use it to print out your own full name.
 */

// TODO: Write solution here
func printFullName(with firstName: String, and lastName: String) {
    print("\(firstName) \(lastName)")
}

printFullName(with: "Himanshu", and: "Dagar")


/*:
 Change the declaration of `printFullName` to have no external name for either parameter.
 */

// TODO: Write solution here
func printFullName(_ firstName: String,_ lastName: String) {
    print("\(firstName) \(lastName)")
}

printFullName("Himanshu", "Dagar")


/*:
 Write a function named `calculateFullName` that returns the full name as a string. Use it to store your own full name in a constant.
 */

// TODO: Write solution here
func calculateFullName(with firstName: String, and lastName: String) -> String {
    
    return "\(firstName) \(lastName)"
}

let fullname = calculateFullName(with: "Himanshu",and: "Dagar")
print(fullname)


/*:
 Change `calculateFullName` to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the following syntax: `string.characters.count`. Use this function to determine the length of your own full name.
 */

// TODO: Write solution here
func calculateFullName(_ firstName: String,_ lastName: String) -> (fullName: String,fullNameLength: Int) {
    
    let fullname = "\(firstName) \(lastName)"
    return (fullname,fullname.count)
}

let (fullname2,fullNamelength) = calculateFullName("Himanshu", "Dagar")
print("\(fullname2) \(fullNamelength)")




func sayStrings(_ name: String,_ arrayOfStrings:String ...) {
    for s in arrayOfStrings { print(s) }
}


//while let ele = [1,2,3,4] {
//
//}

func removeCharacter(_ c:Character, from s: inout String) -> Int {
    
    var howMany = 0
    while let ix = s.index(of:c) {
        s.remove(at:ix)
        howMany += 1
    }
    return howMany
}

var s = "hello"

let range = s.startIndex...

//let range = ..<str.endIndex
print(s[range])
let result = removeCharacter("l", from:&s)

