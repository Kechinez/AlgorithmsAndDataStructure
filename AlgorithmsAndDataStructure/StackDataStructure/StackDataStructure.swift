//
//  StackDataStructure.swift
//  AlgorithmsAndDataStructure
//
//  Created by Nikita Kechinov on 03.09.2018.
//  Copyright © 2018 Nikita Kechinov. All rights reserved.
//

import Foundation

// Swift generic stack implementation example

struct Stack<Element> {
    fileprivate var stack: [Element] = []
    
    mutating func pop() {
         _ = stack.popLast()
    }
    
    mutating func push(newElement: Element) {
        stack.append(newElement)
    }
    
}



extension Stack: CustomStringConvertible {
    
    var description: String {
        let topDivider = "---Stack---\n"
        let bottomDivider = "\n-----------\n"
        
        let stackElements = stack.map { "\($0)" }.reversed().joined(separator: "\n")
        
        return topDivider + stackElements + bottomDivider
    }
}
