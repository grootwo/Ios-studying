import Cocoa

class Person {
    var hours: Int
    init(hours: Int) {
        self.hours = hours
    }
    func sleep() {
        print("I sleep for \(hours) hours.")
    }
}

class Baby: Person {
}

class Teenager: Person {
    override
    func sleep() {
        print("I sleep for \(hours) hours. Yay!")
    }
}

var baby1 = Baby(hours: 12)
baby1.sleep()
var teenager1 = Teenager(hours: 8)
teenager1.sleep()
