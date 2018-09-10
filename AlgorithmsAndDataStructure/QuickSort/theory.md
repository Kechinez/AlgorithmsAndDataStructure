# Quick Sort algorithm
Goal of the alforithm - sort an array from low to high or vice versa.
### Performance
The speed is dependent on the size of the array it needs to sort. The larger the array, the more work it needs to do.
It does not matter if initial array is sorted already or not, it does not affect the speed of the merge-sort algorithm since you 
will be doing the same amount splits and comparisons regardless of the initial order of the elements.
Therefore, the time complexity for the best, worst, and average case will always be O(n log n).
A disadvantage of the merge-sort algorithm is that it needs a temporary "working" array equal in size to the array being sorted. 
### Where should be used?
This algorithm is extremely fast when array to be sorted is totally unsorted.
### The main idea of how it works
This algorithm is based on recursion. See project in Xcode.
 
