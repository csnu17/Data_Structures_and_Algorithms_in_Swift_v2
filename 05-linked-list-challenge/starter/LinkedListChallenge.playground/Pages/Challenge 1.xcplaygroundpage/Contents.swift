// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 # Linked List Challenges
 ## Challenge 1:
 Create a function that prints out the elements of a Linked List in reverse order.
 */

func printInReverse<T>(_ list: LinkedList<T>) {
    var tmpList = list
    
    while let value = tmpList.removeLast() {
        print(value)
    }
}

var list = LinkedList<Int>()
list.push(3)
list.push(2)
list.push(1)
print(list)

printInReverse(list)
//: [Next Challenge](@next)
