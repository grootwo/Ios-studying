import Cocoa


// if
var age = 20

if age >= 20 && age <= 29 {
    print("You're twenties!")
}


var name1 = "apple"
var name2 = "banana"

if name1 > name2 {
    print("\(name1) -> \(name2)")
}
if name1 < name2 {
    print("\(name2) -> \(name1)")
}


var members = [5, 6, 7]
members.append(8)

if members.count > 3 {
    members.remove(at: 0)
}


if !members.isEmpty {
    print("Members are here!")
}
