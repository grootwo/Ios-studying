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
