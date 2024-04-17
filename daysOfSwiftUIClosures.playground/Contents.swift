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


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
print(captainFirstTeam)

let captainFirstTeam1 = team.sorted(by: { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
print(captainFirstTeam1)

let captainFirstTeam2 = team.sorted(by: {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
})
print(captainFirstTeam2)

let reverseTeam = team.sorted {
    return $0 > $1
}

let reverseTeam1 = team.sorted { $0 > $1 }

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)
