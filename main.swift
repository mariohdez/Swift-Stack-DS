/*
 Just playing with my Stack data structure...
 */


import Foundation
import Darwin
import GameplayKit

var myStack = Stack() //  Holds all of the Indexes...

var index = Index()  //  Current index...

// Populating stack with some random values....

for n in  0..<100 {
    var r = (GKRandomSource.sharedRandom().nextInt(upperBound: n) + 1)
    var c = (GKRandomSource.sharedRandom().nextInt(upperBound: n) + 1)
    index.setRow(row: r)
    index.setColumn(col: c)
    myStack.push(item: index)
}


if myStack.toString() != nil {
    print(myStack.toString()!)
}
else{
    print("Stack is empty.")
}

  //  getting rid of everything...
for n in 0..<myStack.getSize() {
    _ = myStack.pop()
}

  //  Always going to say "Stack is empty"...
if let inx = myStack.peek() {
    print(inx)
} else{
    print("Stack is empty!")
}

print("Size: \(myStack.getSize())")

let myIndex = myStack.pop()

if myIndex == nil {
    
    print("This will always be printed...")
}
else{
    print("I guess the swift language is just wrong :/")
}

