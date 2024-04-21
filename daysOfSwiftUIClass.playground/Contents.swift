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


// initializer for classes

class Furniture {
    var isNeeded: Bool
    init(isNeeded: Bool) {
        self.isNeeded = isNeeded
    }
}

class Chair: Furniture {
    var isComfortable: Bool
    init(isNeeded: Bool, isComfortable: Bool) {
        self.isComfortable = isComfortable
        super.init(isNeeded: isNeeded)
    }
}

class Armchair: Chair {
    var isAwesome = true
}

var newArmChair = Armchair(isNeeded: true, isComfortable: false)


// copy
class Cat {
    var age = 0
    
    func copy() -> Cat {
        var newCat = Cat()
        newCat.age = self.age
        return newCat
    }
}

var cat1 = Cat()
var cat2 = cat1.copy()
cat2.age = 3
print(cat1.age)
print(cat2.age)


// deinitializer
class User {
    var id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}


//
class Human {
    var name = "Paul"
}

let human1 = Human()
human1.name = "Taylor"
print(human1.name)

var human2 = Human()
human2.name = "Taylor"
human2 = Human()
print(human2.name)
