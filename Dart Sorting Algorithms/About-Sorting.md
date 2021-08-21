# Sorting Algorithms 
![Sorting in Dart](dart-sort.png)

Sorting Algorithms are methods of reorganizing a large number of items into some specific order such as highest to lowest, or vice-versa, or even in some alphabetical order.
These algorithms take an input list, processes it (i.e, performs some operations on it) and produce the sorted list.


The most common example we experience every day is sorting clothes or other items on an e-commerce website either by lowest-price to highest, or list by popularity, or some other order.

# Time Complexities of Sorting Algorithms:
| Algorithm       | 😄Best Case | 😶Average  | 🙁 Worst Case |
|-----------------|-------------|-------------|------------|
| Quick Sort      | Ω(n log(n)) | Θ(n log(n)) | O(n^2)     |
| Bubble Sort     | Ω(n)        | Θ(n^2)      | O(n^2)     |  
| Merge Sort      | Ω(n log(n)) | Θ(n log(n)) | O(n log(n))|  
| Insertion Sort  | Ω(n)        | Θ(n^2)      | O(n^2)     |  
| Selection Sort  | Ω(n^2)      | Θ(n^2)      | O(n^2)     |  

---
# Bubble Sort
Bubble sort, also referred to as *comparison sort*, is a simple sorting algorithm that repeatedly goes through the list, compares adjacent elements and swaps them if they are in the wrong order. This is the most simplest algorithm and inefficient at the same time.

## Application
Understand the working of Bubble sort
- Bubble sort is mainly used in educational purposes for helping students understand the foundations of sorting.
- This is used to identify whether the list is already sorted. When the list is already sorted (which is the best-case scenario), the complexity of bubble sort is only O(n).
- In real life, bubble sort can be visualised when people in a queue wanting to be standing in a height wise sorted manner swap their positions among themselves until everyone is standing based on increasing order of heights.
Bubble sort has many of the same properties as insertion sort, but has slightly higher overhead. In the case of nearly sorted data, bubble sort takes O(n) time, but requires at least 2 passes through the data (whereas insertion sort requires something more like 1 pass).
```dart
[codigo]
```
---
# Selection Sort
Selection sort is a simple comparison-based sorting algorithm. It is in-place and needs no extra memory.
The idea behind this algorithm is pretty simple. We divide the array into two parts: sorted and unsorted. The left part is sorted subarray and the right part is unsorted subarray. Initially, sorted subarray is empty and unsorted array is the complete given array.
## Application
Understand the working of Selection Sort. We perform the steps given below until the unsorted subarray becomes empty:
- Pick the minimum element from the unsorted subarray.
- Swap it with the leftmost element of the unsorted subarray.
- Now the leftmost element of unsorted subarray becomes a part (rightmost) of sorted subarray and will not be a part of unsorted subarray.
```dart
[codigo]
```
---
#  Quick Sort Algorithm
The algorithm was developed by a British computer scientist Tony Hoare in 1959. The name “Quick Sort” comes from the fact that, quick sort is capable of sorting a list of data elements significantly faster (twice or thrice faster) than any of the common sorting algorithms. It is one of the most efficient sorting algorithms and is based on the splitting of an array (partition) into smaller ones and swapping (exchange) based on the comparison with ‘pivot’ element selected. Due to this, quick sort is also called as “Partition Exchange” sort. Like Merge sort, Quick sort also falls into the category of divide and conquer approach of problem-solving methodology.

## Application
### Quicksort works in the following way
Before diving into any algorithm, its very much necessary for us to understand what are the real world applications of it. Quick sort provides a fast and methodical approach to sort any lists of things. Following are some of the applications where quick sort is used.

- Commercial computing: Used in various government and private organizations for the purpose of sorting various data like sorting of accounts/profiles by name or any given ID, sorting transactions by time or locations, sorting files by name or date of creation etc.
- Numerical computations: Most of the efficiently developed algorithms use priority queues and inturn sorting to achieve accuracy in all the calculations.
- Information search: Sorting algorithms aid in better search of information and what faster way exists than to achieve sorting using quick sort.

Basically, quick sort is used everywhere for faster results and in the cases where there are space constraints.
```dart
[codigo]
```
---
# Merge Sort Algorithm
Merge sort is one of the most efficient sorting algorithms. It works on the principle of Divide and Conquer. Merge sort repeatedly breaks down a list into several sublists until each sublist consists of a single element and merging those sublists in a manner that results into a sorted list.

## Application
### A merge sort works as follows:
- *Top-down Merge Sort Implementation*: The top-down merge sort approach is the methodology which uses recursion mechanism. It starts at the Top and proceeds downwards, with each recursive turn asking the same question such as “What is required to be done to sort the array?” and having the answer as, “split the array into two, make a recursive call, and merge the results.”, until one gets to the bottom of the array-tree.
- *Merging of two lists done as follows*: The first element of both lists is compared. If sorting in ascending order, the smaller element among two becomes a new element of the sorted list. This procedure is repeated until both the smaller sublists are empty and the newly combined sublist covers all the elements of both the sublists.
- *Bottom-Up Merge Sort Implementation*: The Bottom-Up merge sort approach uses iterative methodology. It starts with the “single-element” array, and combines two adjacent elements and also sorting the two at the same time. The combined-sorted arrays are again combined and sorted with each other until one single unit of sorted array is achieved.
```dart
[codigo]
```
---
# Insertion Sort Algorithm
Insertion sort is the sorting mechanism where the sorted array is built having one item at a time. The array elements are compared with each other sequentially and then arranged simultaneously in some particular order. The analogy can be understood from the style we arrange a deck of cards. This sort works on the principle of inserting an element at a particular position, hence the name Insertion Sort.

## Application
### Insertion Sort works as follows:
- The first step involves the comparison of the element in question with its adjacent element.
- And if at every comparison reveals that the element in question can be inserted at a particular position, then space is created for it by shifting the other elements one position to the right and inserting the element at the suitable position.
- The above procedure is repeated until all the element in the array is at their apt position.
```dart
[codigo]
```
---
