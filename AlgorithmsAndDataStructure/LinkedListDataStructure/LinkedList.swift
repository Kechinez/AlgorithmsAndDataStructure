//
//  LinkedList.swift
//  AlgorithmsAndDataStructure
//
//  Created by Nikita Kechinov on 10.09.2018.
//  Copyright © 2018 Nikita Kechinov. All rights reserved.
//

import Foundation


// Generic implementation of Linked List

class Node<T> {
    let value: T
    var next: Node<T>?
    weak var previous: Node<T>?
    
    init(value: T) {
        self.value = value
    }
}


class LinkedList<T> {
    private var tail: Node<T>?
    private var head: Node<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var first: Node<T>? {
        return head
    }
    var last: Node<T>? {
        return tail
    }
    
    
    // Update the append function to take in a value of type T
    func append(value: T) {
        let newNode = Node(value: value)
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    
    // Update the nodeAt function to return a node constrained to type T
    func nodeAt(index: Int) -> Node<T>? {
        if index >= 0 {
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        return nil
    }
    
    
    func removeAll() {
        head = nil
        tail = nil
    }
    
    // Update the parameter of the remove function to take a node of type T. Update the return value to type T.
    public func remove(node: Node<T>) -> T {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev
        
        if next == nil {
            tail = prev
        }
        
        node.previous = nil
        node.next = nil
        
        return node.value
    }

}
