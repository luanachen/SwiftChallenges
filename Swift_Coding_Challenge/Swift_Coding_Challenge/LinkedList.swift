//
//  LinkedListNode.swift
//  Swift_Coding_Challenge
//
//  Created by Luana on 26/05/21.
//

import Foundation

class LinkedList<T> {
    var start: LinkedListNode<T>?
    
    func printNodes() {
        var currentNode = start
        
        while let node = currentNode {
            print(node.value, terminator: " ")
            currentNode = node.next
        }
    }
    
    func middle() -> T? {
        // the end of the linked list is more or less twice as far as the half-way point
        var slow = start
        var fast = start
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow?.value
    }
}

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    
    init(value: T) {
        self.value = value
    }
}
