// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 ## Challenge 3:
 Create a function that reverses a linked list
 */

extension LinkedList {
    
    mutating func reverse() {
        var reversedList = LinkedList()
        
        while let value = removeLast() {
            reversedList.append(value)
        }
        
        self = reversedList
    }
}

var list = LinkedList<Int>()
list.push(4)
list.push(3)
list.push(2)
list.push(1)
print(list)

list.reverse()

print(list)
//: [Next Challenge](@next)
