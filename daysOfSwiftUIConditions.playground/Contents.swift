import Cocoa


// if
var age = 20

if age >= 20 && age <= 29 {
    print("You're twenties!")
}


var name1 = "apple"
var name2 = "banana"

if name1 > name2 {
    print("\(name2) -> \(name1)")
}
if name1 < name2 {
    print("\(name1) -> \(name2)")
}


var members = [5, 6, 7]
members.append(8)

if members.count > 3 {
    members.remove(at: 0)
}


if !members.isEmpty {
    print("Members are here!")
}


// else if, else
enum Color {
    case red, green, yellow
}

var color = Color.green

if color == .red {
    print("Don't go now")
} else if color == .yellow {
    print("Slow your pace")
} else {
    print("You may go")
}


// &&, ||
var isWet = true
var isCold = true
var isSunny = false

if isCold && isWet {
    print("It can be winter!")
    if !isSunny {
        print("And it's cold!")
    }
}


// switch
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.unknown

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}


let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

let day = 2
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
