//
//  main.swift
//  Classes and Objects
//
//  Created by Himanshu Dagar on 12/07/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

let myCar = Car()

print(myCar.color)
print(myCar.numberOfSeats)
print(myCar.typeOfCar)
myCar.drive()
print()

let anotherGuysCar = Car(customerChosenColor: "Gold")

print(anotherGuysCar.color)
print(anotherGuysCar.numberOfSeats)
print(anotherGuysCar.typeOfCar)
myCar.drive()
print()

let mySelfDrivingCar = SelfDrivingCar()
mySelfDrivingCar.destination = "Palam"
print(mySelfDrivingCar.color)
mySelfDrivingCar.drive()
