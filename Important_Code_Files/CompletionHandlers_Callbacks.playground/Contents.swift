//: Playground - noun: a place where people can play

import UIKit

/* Remember the "event driven" nature of apps. Apps are all about sending and receiving the information. Information could be sent by OS when getting call to ViewController of app OR it could be send by thrid party APIs like FireBase when it completes the creation of user OR it could receive it from Buttons. So all these events and actions would be done parallely by diff-2 threads so that app does not freeze up and it can do lot of stuff parallely. */


// Server Side
class Firebase {
    func createUser(userId: String, password: String, completion: (Bool,Int) -> Void){
        
        // Do some heavy lifting task for creating and autentication user
        let isSuccess = true
        let userID = 123
        sleep(4)
        
        //After completion of above task, now it would call the method which got send in completion in form of trailing closure
        completion(isSuccess,userID)
    }
}


// Client Side
class MyApp {
    
    func registerButtonPressed(){
        
        let fireBase = Firebase()
        
        // No new threads are created here but in actual, while using FireBase SDKs, it would create new thread so that app does not freeze up.
        fireBase.createUser(userId: "Himanshu", password: "123456") {  // trailing closure in form of function, which gets passed in method
            (isSuccess, userID) in
            
            // this would get called by "createUser" method after the heavy lifting work.
            print("registration is successful: \(isSuccess)")
            print("usedID is: \(userID)")
        }
        
        print("IS this First really: No")
    }
}

let myApp = MyApp()
myApp.registerButtonPressed()
