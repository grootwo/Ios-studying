import Cocoa

var number: Int? = nil
number = 30
//if number > 10 {
//    print("\(number) is bigger than 10. (1)")
//}
if let number = number {
    if number > 10 {
        print("\(number) is bigger than 10. (2)")
    }
} else {
    print("number is unwrapped.")
}
//if number > 10 {
//    print("\(number) is bigger than 10. (3)")
//}


// guard let
func checkStringHasValue(textInput: String?) {
    guard let textInput = textInput else {
        print("There is no text.")
        return
    }
    
    print("'\(textInput)' is input.")
}

checkStringHasValue(textInput: nil)
checkStringHasValue(textInput: "")


// nil coalescing
struct Computer {
    var user: String?
    var model: String
}

var computer1 = Computer(user: "user1", model: "macbook pro 1")
var computer2 = Computer(user: nil, model: "macbook pro 2")
let user2 = computer2.user ?? "unknown"
print(user2)
