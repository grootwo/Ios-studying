import Cocoa

// var and let
var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let myCatName = "ChoiGo"
print(myCatName)

// myCatName = "different"


// string
let greeting = "Hallo, welcome to the \"swiftui\""
print(greeting)
print(greeting.count)

let fileName = "❗️image.jpg"
print(fileName)
print(fileName.hasPrefix("i"))
print(fileName.hasSuffix(".jpg"))

let longText = """
A day in the life
of an Apple engineer
"""
print(longText)
print(fileName.uppercased())
print(fileName.lowercased())


// integer
var number = 10

var bigNumber = 1000000000
bigNumber = 1_000_000_000
bigNumber = 10_000___00000
print(bigNumber)

print(number + 2)
print(number * 2)
print(number / 2)
print(number - 2)

number -= 10
print(number)

print(100.isMultiple(of: 28))


// double
let intNum = 1
var doubleNum = 1.0
// print(intNum + doubleNum)
print(Double(intNum) + doubleNum)
print(intNum + Int(doubleNum))

doubleNum += doubleNum
print(doubleNum)


// booleans
var awesomeCat = true
let isDivider = 100.isMultiple(of: 3)

awesomeCat = !awesomeCat
awesomeCat.toggle()
print(awesomeCat)
awesomeCat != awesomeCat // 72 줄과 다른 의미
print(awesomeCat)


// join strings
let subject = "시간이"
let verb = "흘러가"
let lyric = subject + " 어지러울 만큼 빠르게 " + verb
print(lyric)

let year = 2023
let sentence1 = "This is " + String(year) + "!"
let sentence2 = "This is \(year)!"
