//
//  Car.swift
//  Classes and Objects
//
//  Created by Himanshu Dagar on 12/07/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    var color : String
    var numberOfSeats : Int           // Properties
    var typeOfCar : CarType
    
    init() {      // Event, designated initializer
        self.color = "Black"
        self.numberOfSeats = 5
        self.typeOfCar = .Coupe
    }
    
    convenience init(customerChosenColor: String) {
        self.init()
        self.color = customerChosenColor
    }
    
    func drive() {                    // Methods, Actions
        print("car is moving")
    }
}
