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