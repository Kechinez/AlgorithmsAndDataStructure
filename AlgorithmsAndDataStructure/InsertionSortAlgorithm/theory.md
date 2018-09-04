# Insertion Sort algorithm
Goal of the alforithm - sort an array from low to high or vice versa.
### Performance
There are two nested loops in insertion sort, so the average performance is O(n^2). The best case performance is O(n)
### Where should be used?
This algorithm is extremely fast when array to be sorted is small and already almost sorted.
### The main idea of how it works
We have two for-loops. The first one goes through array from the first to the last element. The second one goes down from the index of element
which was lower/bigger then previous one and swap elements between each other until the entire left-side of the array will be sorted.
