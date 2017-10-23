import Foundation

/// Binary Search algorithm using a while loop
/// Binary search is an O(log(n)) logarithm
/// We assume the entry is always sorted (in other playground I will do this sorting the array before starting the search)

func binarySearch<T: Comparable>(_ values: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = values.count - 1
    var middleIndex = 0
    
    // we don't want to stop if we haven't cover the entire array
    while lowerBound <= upperBound {
        // we find the middle index to devide the effort
        middleIndex = (lowerBound + upperBound) / 2
        
        // we are going to check if:
        // - is the key at the right of the array?
        // - is the key at the left of the array?
        // - is the key the in the middle?
        
        if values[middleIndex] < key {
            lowerBound = middleIndex + 1
        } else if values[middleIndex] > key {
            upperBound = middleIndex - 1
        } else {
            return middleIndex
        }
    }
    
    // we return nil if we didn't find a match
    return nil
}

// let's find a number in this array (we need it to be sorted first for this example)
let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
binarySearch(numbers, key: 11)

