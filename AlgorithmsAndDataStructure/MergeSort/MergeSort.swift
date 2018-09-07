//
//  MergeSort.swift
//  AlgorithmsAndDataStructure
//
//  Created by Nikita Kechinov on 06.09.2018.
//  Copyright © 2018 Nikita Kechinov. All rights reserved.
//

import Foundation
/*
 How it works:
 [0, 4, 2, 10, 5, 8, 7, 3, 9, 6, 1] - array
 
 1) Devide array into two array - left one [0, 4, 2, 10, 5] and right one [8, 7, 3, 9, 6, 1] by finding middleIndex. Then we recursively call mergeSort function (1) and give it left array [0, 4, 2, 10, 5]. For now we don't care about right array.
 
 2) Recursively called mergeSort function finds middleIndex and devides left array [0, 4, 2, 10, 5] into two subarrays - left one [0, 4] and right one [2, 10, 5]. Then we recursively call mergeSort function (2) again and give it left subarray [0, 4].
 
 3) Recursively called mergeSort function finds middleIndex and devides left array [0, 4] into two subarrays - left one [0] and right one [4]. Since subarrays [0] and [4] have only one element so guard array.count > 1  is false and it continues executing. It calls merge() function and gives it left and right subarrays which are [0] and [4]. Merge() returns ordered array made of left and right subarrays. After that current recursively mergeSort function (2) stops executing and returns ordered array [0, 4] to mergeSort function (1).
 
 4) Now recursively called mergeSort function (1) has sorted leftArray which is [0, 4] and can keep going to find rightArray. It recursively calls mergeSort function (3) and gives it right subarray [2, 10, 5].
 
 5) Recursively calls mergeSort function (3) devides array into two subarrays - left one [2] and right one [10, 5]. Then it recursively calls mergeSort function (4) and gives it left subarray [2]. But since guard array.count > 1 is false it returns subarray [2] to mergeSort function (3). For that moment mergeSort function (3) has leftArray which is [2], and it recursively calls mergeSort function (5) and gives it right subarray [10, 5]
 
............................
............................
 
 6) As a result, mergeSort function (1) returns sorted array [0, 2, 4, 5, 10] made from [0, 4, 2, 10, 5]. Then since main mergeSort function now has leftArray, it does exactly the same steps to get sorted array from [8, 7, 3, 9, 6, 1]. After these steps we have sorted leftArray - [0, 2, 4, 5, 10] and sorted rightArray - [1, 3, 6, 7, 8, 9]. Then main mergeSort function calls merge() for the last time. Merge() sortes left and right arrays and returns final sorted array.

*/

func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let middleIndex = array.count / 2
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    return merge(leftArray, rightArray)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
print("Left array \(left), right array \(right)")
    var leftIndex = 0
    var rightIndex = 0
    
    var orderedArray: [Int] = []
    
    // 1
    
    while leftIndex < left.count && rightIndex < right.count {
        
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        if leftElement < rightElement { // 2
            orderedArray.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            orderedArray.append(rightElement)
            rightIndex += 1
        } else { // 4
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }
    return orderedArray
}



