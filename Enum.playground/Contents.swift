//: Playground - noun: a place where people can play

//import Foundation

enum PepBoy: Int {
    case manny
    case moe
    case jack
}

let pepBoy: PepBoy = .manny
print(pepBoy.rawValue)

enum Weekday: String {
    case sunday = "Sunday"
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday = "Friday"
    case saturday
}

let day : Weekday = .friday
print(day.rawValue)

switch day {
case .sunday:
    print("Sunday")
default:
    print("Default")
}
