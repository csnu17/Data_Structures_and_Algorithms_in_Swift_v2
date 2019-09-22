// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 ## Challenge 2:
 Create a function that returns the middle node of a Linked List.
 */

func getMiddle<T>(_ list: LinkedList<T>) -> Node<T>? {
    var count = 0
    var head = list.head

    while head != nil {
        count += 1
        head = head?.next
    }

    let middleIndex = count / 2
    let node = list.node(at: middleIndex)

    return node
}

var list = LinkedList<Int>()
list.push(4)
list.push(3)
list.push(2)
list.push(1)
print(list)

print("middle is \(getMiddle(list)!.value)")
//: [Next Challenge](@next)
