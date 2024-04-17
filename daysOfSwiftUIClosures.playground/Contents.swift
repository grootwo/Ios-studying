import Cocoa

// closures
let sayHello = {
    print("Hello!")
}
sayHello()

let greeting: () -> Void = sayHello
greeting()


let sayName = { (name: String) -> String in
    "Hello, \(name)"
}
print(sayName("sweet little kitty"))

