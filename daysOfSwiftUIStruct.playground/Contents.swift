import Cocoa

struct Player {
    let team: String
    var hp: Int
    
    func sayTeam() {
        print("My team is \(team).")
    }
    mutating func gotAttacked(attack: Int) {
        hp -= attack
        print("Now I have \(hp) hp.")
    }
}

let player1 = Player(team: "Mountain", hp: 30)
var player2 = Player(team: "Ocean", hp: 50)

print(player1.hp)
print(player2.team)

player1.sayTeam()
player2.gotAttacked(attack: 20)


struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)


struct Club {
    var members = ["me"] {
        willSet {
            print("Current members are: \(members)")
            print("New member will be: \(newValue)")
        }

        didSet {
            print("There are now \(members.count) members.")
            print("Former member list was \(oldValue)")
        }
    }
}

var knittinClub = Club()
knittinClub.members.append("Groo")
knittinClub.members.append("Cheese Cat")
knittinClub.members.append("White Elephant")


struct Time {
    var time: Date
    var timeString: String
    
    init(time: Date) {
        self.time = time
        timeString = time.formatted(date: .omitted, time: .standard)
    }
}

var time1 = Time(time: Date())
print(time1.timeString)
