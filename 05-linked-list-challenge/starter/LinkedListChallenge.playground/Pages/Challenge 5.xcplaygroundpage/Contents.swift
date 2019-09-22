// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 ## Challenge 5:
 Create a function that removes all occurrences of a specific element from a Linked List.
 */

extension LinkedList where Value: Equatable {
    
    mutating func removeAll(_ value: Value) {
        var newList = LinkedList<Value>()
        var head = self.head
        
        while head != nil {
            guard let v = head?.value else {
                head = head?.next
                continue
            }
            
            if v != value {
                newList.append(v)
            }
            
            head = head?.next
        }
        
        self = newList
    }
}

var list = LinkedList<Int>()
list.push(4)
list.push(3)
list.push(3)
list.push(3)
list.push(1)
print(list)

list.removeAll(3)
print(list)
