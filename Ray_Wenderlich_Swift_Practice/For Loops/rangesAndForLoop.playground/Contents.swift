//: Playground - noun: a place where people can play

let closedRange = 0...5
print(closedRange)

let halfOpenRange = 0..<5
print(halfOpenRange)

for ele in closedRange where ele % 2 == 0 {
    print(ele)
}
print("\n")

for ele in halfOpenRange where ele % 3 == 0 {
    print(ele)
}
print("\n")

let array = ["Himanshu","Deepanshu",nil,"Prince"]
for case let ele? in array {
    print(ele, terminator:" ")
}
print("\n")

for ele in closedRange.reversed() {
    print(ele)
}
print("\n")

for (index,ele) in closedRange.enumerated() {
    print(index,ele)
}
print("\n")

for (index,ele) in closedRange.reversed().enumerated() {
    print(index,ele)
}
print("\n")

// loops have its labels like I used in JAVA.
outer: for row in 0...3 {
    inner: for col in 0...3 {
        if row == 2 {
            break outer
            // continue outer
        }
        print(col, terminator: " ")
    }
    print()
}


