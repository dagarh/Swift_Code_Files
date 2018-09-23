//: Playground - noun: a place where people can play


let number = -5

switch number {
case 0: print("Zero")
case 1...9: print("Between 1 and 9")
case _ where number < 0: print("negative number")
case 10: print("Ten")
default: print("Undefined")
}


let string = "Pig"
switch string {
case "Dog","Cat":
    print("Animal is a house pet")
default:
    print("Animal is not a house pet")
}


switch number {
case let x where x % 2 == 0:
        print("no is even!!!")
default: print("Odd number")
}


let coordinates = (x: 2 ,y: 4, z: 9)

switch coordinates {
case (0,0,0):
    print("Origin")
case (let x,0,0):
    print("On the x-axis at x=\(x)")
case (0,let y,0):
    print("On the y-axis at y=\(y)")
case let (x,y,_) where y == x:
    print("Along the y=x line")
case let (x,y,_) where y == x*x:
    print("along the y=x^2 line")
case (0,0,let z):
    print("On z-axis at z=\(z)")
case let (x,y,z):
    print("Somewhere in space at x:\(x) y:\(y) z:\(z)")
}
