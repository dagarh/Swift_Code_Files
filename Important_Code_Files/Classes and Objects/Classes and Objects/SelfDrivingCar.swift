//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Himanshu Dagar on 12/07/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation // lighter version of UIKit

class SelfDrivingCar : Car {
    
    var destination : String! // it means you want to keep it unwrapped
    
    override func drive() {
        super.drive()
        
        // this is called force unwrapping, very dangerous
        print("Driving Towards " + destination!)
        
        /* Non swifty way of checking */
//        if destination != nil {
//            print("Driving Towards " + destination!)
//        }
        
        // this is called Optional Binding, swifty way of doing it
        if let customDestination = destination {
            print("Driving Towards " + customDestination)
        }
    }
}
