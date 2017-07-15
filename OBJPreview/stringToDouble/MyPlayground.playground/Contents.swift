//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var line = " -1.496645 0.027290 1.354413"

//goal in this game is to translate string ( mothafuckaaaa up)
//into double array ( include the negative fuckers)


let negative: Double = -1.233434875

var stringNumberArray = [String]()
line.remove(at: line.startIndex)
line.remove(at: line.startIndex)
print(line)
stringNumberArray = line.components(separatedBy: " ")
var doubleArray = [Double]()
let maxIndex = stringNumberArray.count

for index in 0..<maxIndex {
    doubleArray.append(Double(stringNumberArray[index])!)
}
//
for number in doubleArray {
  print(number)
}

print(doubleArray)
print(doubleArray[0])
let newDouble = doubleArray[0] + 1.0000

// get string without bullshits


let experimentalLine = "v    -1.496645            0.027290           1.354413"

func deleteReduntantSpacers(line: String) -> String {
    let components = line.components(separatedBy: NSCharacterSet.whitespacesAndNewlines)
    return components.filter { !$0.isEmpty }.joined(separator: " ")
}
var clearLine = deleteReduntantSpacers(line: experimentalLine)
print(clearLine)

var stra = "vn ahoj"
print(stra.in)