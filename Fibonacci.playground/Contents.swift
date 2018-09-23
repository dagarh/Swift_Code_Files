//: Playground - noun: a place where people can play

import UIKit

func fibonacci(until n : Int) -> String {
    
    var a: Int = 0
    var b: Int = 1
    
    var series: String = ""
    series += "\(a) \(b) "
    
    for _ in 1...n {
        let c = a + b  // implicitly infered
        series += "\(c) "
        a = b
        b = c
    }
    return series
}

print(fibonacci(until: 10))
