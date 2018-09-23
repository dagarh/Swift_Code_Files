//: Playground - noun: a place where people can play

import UIKit

func beerSong(withThisManyBottles totalNumberOfBottles : Int) -> String {
    
    var lyrics: String = ""
    
    for bottleNo in (0...totalNumberOfBottles).reversed() {
        
        if bottleNo == 0 {
            lyrics += "No more bottles of beer on the wall, no more bottles of beer.\n"
        }else {
            lyrics += "\(bottleNo) bottles of beer on the wall, \(bottleNo) bottles of beer.\n"
        }
        
        if bottleNo == 0 {
            lyrics += "Go to store and buy some more, \(totalNumberOfBottles) bottles of beer on the wall.\n\n"
        }else if bottleNo == 1 {
            lyrics += "Take one down and pass it around, no more bottles of beer on the wall.\n\n"
        }else {
            lyrics += "Take one down and pass it around, \(bottleNo-1) bottles of beer on the wall.\n\n"
        }
    }
    return lyrics
}

print(beerSong(withThisManyBottles: 49))
