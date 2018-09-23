//: Playground - noun: a place where people can play

// Tuples don’t conform to the hashable protocol. Hence it cannot be used as dictionary keys.

let coordinates : (Int,Int) = (2,3)

print(type(of: coordinates))
print(coordinates)

print("x1: \(coordinates.0)")
print("x2: \(coordinates.1)")


let coordinatesMixed = (2,"Hi") // Mixed tuples equally valid
print(type(of: coordinatesMixed),coordinatesMixed.1)


/* Tuples are value types, not reference types. Below is the example.
 Note: Tuple are value types. When you initialize a variable tuple with another one it will actually create a copy.
 Please note that tuples are passed by value, not reference.
 */
var copiedCoordinates = coordinates
copiedCoordinates.0 = 4 // pointer now points to some different state/object.
print(copiedCoordinates,coordinates)


// Empty tuples to start with --> no such thing. But optionals could be used with tuple.
/* Do through this :
 https://stackoverflow.com/questions/33357892/swift-declaring-empty-tuples
 https://medium.com/@abhimuralidharan/tuple-in-swift-a9ddeb314c79
 () is the empty tuple – it has no elements. It also represents the Void type.
 */
var myTuple: (key: String, val: Int)? = ("Himanshu",24)
print((myTuple?.key)!) // optional chaining


// Decomposition of tuples
var named3DCoordinates = (x: 2,y: 3,z: 5)
let (x1,y1,z1) = named3DCoordinates // unwrapping tuple in one go
print(x1,y1,z1)
print("\(named3DCoordinates.x) \(named3DCoordinates.y) \(named3DCoordinates.z)")

let (x2,y2,_) = named3DCoordinates // if you do not want to use some then you can unwrap like this.


/* You can return multiple values from a function if you set the result type to a tuple. */
typealias tupleVar = (String,String)
func returnMultipleValues(_ tuple: tupleVar) -> tupleVar {
    return ("Himanshu","Akash")
}


// Easy way of swaping two values.
var a = 5
var b = 4
(b, a) = (a, b)
print(a,b)









