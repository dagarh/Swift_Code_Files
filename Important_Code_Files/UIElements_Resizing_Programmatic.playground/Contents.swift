//: Playground - noun: a place where people can play
import UIKit

// we can write this in ViewDidLoad when app is just starting and this is true for all i.e UILabel, UIButton, UIImageView,
// UIImage. CG stands for Core Graphics
let square = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
square.backgroundColor = UIColor.blue


// self means it referes to the ViewController. So there would be one self for each ViewController. Each ViewController has
// a view associated with it and this view has its frame. And then frame has its width, height,....etc properties.
/* self.view.addSubview(square) */


// we can use this kind of strategy for auto-layout programatically
/*
x = self.view.frame.weight / 2 - square.frame.weight / 2
y = self.view.frame.height / 2 - sqaure.frame.height / 2
*/
// it will always place square at the centre of screen, no matter what the canvas size is.
