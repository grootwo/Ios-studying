import Cocoa

class Animal {
    var legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    override init(legs: Int) {
        super.init(legs: legs)
    }
    func speak() {
        print("Bow!")
    }
}

class Corgi: Dog {
    override
    func speak() {
        print("Bow and i'm corgi!")
    }
}

class Poodle: Dog {
    override
    func speak() {
        print("Bow and i'm poodle!")
    }
}

class Cat: Animal {
    var isTame: Bool
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    func speak() {
        print("Meow!")
    }
}

class Persian: Cat {
    override
    func speak() {
        print("Meow and i'm persian!")
    }
}

class Lion: Cat {
    override
    func speak() {
        print("Meow and i'm lion!")
    }
}

var corgi = Corgi(legs: 4)
var lion = Lion(legs: 4, isTame: false)
corgi.speak()
lion.speak()
