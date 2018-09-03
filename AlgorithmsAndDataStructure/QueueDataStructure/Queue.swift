//
//  Queue.swift
//  AlgorithmsAndDataStructure
//
//  Created by Nikita Kechinov on 03.09.2018.
//  Copyright © 2018 Nikita Kechinov. All rights reserved.
//

import Foundation

// Swift generic stack implementation example

struct Queue<Element> {
    var queue: [Element] = []

    mutating func inqueue(element: Element) {
        queue.append(element)
    }

    mutating func dequeue() -> Element? {
        guard !queue.isEmpty else { return nil }
        let deletedItem = queue.remove(at: 0)
        return deletedItem
    }
    
    func peek() -> Element? {
        return queue.first
    }
    
    

}
