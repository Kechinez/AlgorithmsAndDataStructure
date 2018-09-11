# Quick Sort algorithm
Goal of the alforithm - sort an array from low to high or vice versa.
### The main idea of how it works
This algorithm is based on recursion. The main idea of this algorithm is to use pivot. A pivot is a variable used to devide algorithm into three part - "less" part (contains all elements less than pivot value), "equal" part (contains pivot and elements which are equal to a pivot, in case if value of pivot is not unique and repeats in array ) and "greater" part (contains all elements greater that pivot value). After that division, we get new special index-variable which shows where the border between "less" part and "equal" part. Then each of these parts is devided into new "less" sub part, "equal" sub part and "greater" sub part according to the new pivot value. As a result, each part and each subpart is sorted.
### Performance
The speed is dependent on the size of the array it needs to sort. The larger the array, the more work it needs to do.
One thing which affects performance is partitioning process, in other words process of defining pivot value. Thus, when pivot is well-chosen, Quick sort algorithm performance is O(n logn). If pivot is not appropriate, performance can decreases to O(n^2). The main advantage of Quick sort algorithm is that it does not require temporary "working" array, it uses the same array. Thus, it saves memory.
#### Partitioning:
* Lomuto's partitioning scheme: pivot is always the last element in array or in "less" or "greater" parts
* Hoare's partitioning scheme: pivot is always the first element in array or in "less" or "greater" part
* Randomizing of pivot choosing scheme: pivot is chosen using random array index
* Dutch national flag scheme: it divides array into 4 parts instead of 3 and used in cases when array has many duplicate elements
### Where should be used?
This algorithm is extremely fast and memory efficient. 

