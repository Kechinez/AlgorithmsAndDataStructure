//
//  InsertionSort.swift
//  AlgorithmsAndDataStructure
//
//  Created by Nikita Kechinov on 04.09.2018.
//  Copyright © 2018 Nikita Kechinov. All rights reserved.
//

import Foundation


func insertionSortWithSwapping(array: [Int]) -> ([Int], Double) {
    let start = CFAbsoluteTimeGetCurrent()
    var sortedArray = array
    var counter = 0
    for i in 1..<array.count {
        var y = i
        let temp = sortedArray[i]
        while y > 0 && temp < sortedArray[y - 1] {
            counter = counter + 1
            sortedArray.swapAt(y - 1, y)
            y -= 1
        }
    }
    let diff = (CFAbsoluteTimeGetCurrent() - start) * 1000

    return (sortedArray, diff)

}



func insertionSortWithoutSwapping(array: [Int]) -> ([Int], Double) {
    let start = CFAbsoluteTimeGetCurrent()
    var sortedArray = array
    for i in 1..<array.count {
        var y = i
        let temp = sortedArray[i]
        while y > 0 && temp < sortedArray[y - 1] {
            sortedArray[y] = sortedArray[y - 1]
            y -= 1
        }
        sortedArray[y] = temp
    }
    
    let diff = (CFAbsoluteTimeGetCurrent() - start) * 1000
    return (sortedArray, diff)
}



