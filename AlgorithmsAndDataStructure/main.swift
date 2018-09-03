//
//  main.swift
//  AlgorithmsAndDataStructure
//
//  Created by Nikita Kechinov on 03.09.2018.
//  Copyright © 2018 Nikita Kechinov. All rights reserved.
//

import Foundation

var stack = Stack<String>()

stack.push(newElement: "One")
stack.push(newElement: "Two")
stack.push(newElement: "Three")
stack.push(newElement: "Four")
stack.push(newElement: "Five")

print(stack.description)
stack.pop()
print(stack.description)
