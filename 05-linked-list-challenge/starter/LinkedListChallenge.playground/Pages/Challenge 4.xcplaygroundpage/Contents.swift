// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 ## Challenge 4:
 Create a function that takes 2 sorted linked lists and merges them into a single sorted linked list.
 */

func mergeSorted<T: Comparable>(_ left: LinkedList<T>,
                                _ right: LinkedList<T>) -> LinkedList<T> {
    var leftHead = left.head
    var rightHead = right.head
    var mergeSortedList = LinkedList<T>()
    
    while leftHead != nil || rightHead != nil {
        if let lh = leftHead, let rh = rightHead {
            if lh.value < rh.value {
                mergeSortedList.append(lh.value)
                leftHead = leftHead?.next
                continue
                
            } else {
                mergeSortedList.append(rh.value)
                rightHead = rightHead?.next
                continue
            }
            
        } else if let lh = leftHead {
            mergeSortedList.append(lh.value)
            leftHead = leftHead?.next
        } else if let rh = rightHead {
            mergeSortedList.append(rh.value)
            rightHead = rightHead?.next
        }
    }
    
    return mergeSortedList
}

var list1 = LinkedList<Int>()
list1.push(11)
list1.push(10)
list1.push(4)
list1.push(1)
print("list1: \(list1)")

var list2 = LinkedList<Int>()
list2.push(6)
list2.push(3)
list2.push(2)
list2.push(-1)
print("list2: \(list2)")

let mergedSortedList = mergeSorted(list1, list2)
print("merge sorted list: \(mergedSortedList)")
//: [Next Challenge](@next)
