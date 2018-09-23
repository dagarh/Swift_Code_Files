//: Playground - noun: a place where people can play

import UIKit

let url = URL(string: "https://my-json-server.typicode.com/iranjith4/ad-assignment/db")!

func printTest(_ result: @autoclosure () -> Void) {
    print("Before")
    result()
    print("After")
}

printTest(print("Hello"))


func fetchDataFromServer() {
    let sharedSession = URLSession.shared
    print(url)
    sharedSession.dataTask(with: url) { (data, response, error) in
        if let error = error {
            print("Client side error : \(error.localizedDescription)")
        }
        
        guard let data = data, let response = response as? HTTPURLResponse,
            response.statusCode == 200 else {
                print("No data found, Server side issue :(")
                return
        }
        print(data)
    }
}

// fetchDataFromServer()



var matrix = [[Int]](repeating: [Int](repeating: -1, count: 5), count: 2)

print(matrix[0][0])

let items: Set<Int> = [1,2,3,4,5,6,7,8]

var dict = [String: Int]()
dict["Himanshu"] = 45

dict["Deepanshu"] = 78

let array = [Int](repeating: 0, count: 10)


for (key,value) in dict {
    print(key,value)
}

for index in stride(from: 0, to: items.count, by: 2) {
    print(index)
}

for index in (0...3).reversed() {
    print(index)
}
