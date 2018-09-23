//: Playground - noun: a place where people can play

import UIKit

/*
 
 Below is the example of multi-level inheritance, from below example it looks like that last line of init() constructor is always
 super.init(). We can override that by writing our own super.init() at very starting.
 
 */

class SuperClass {
    init() {
        print("Hi Suberclass")
        print("over")
    }
}


class Himanshu : SuperClass {
    
    override init() {
        super.init()
        print("Hi")
        print("Bye")
        self.callMe()
    }
    
    func callMe(){
        print("Not Overridden")
    }
    
}


class Prince : Himanshu {
    
    override init() {
      //  super.init()
        print("Hi Prince")
    }
    
    override func callMe() {
        print("Overridden")
    }
}


var p = Prince()
print("\n")
var h = Himanshu()
