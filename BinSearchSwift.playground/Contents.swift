
func binSearch(list: [Int], item: Int) -> Int? {
    
    // The segment where the search is performed
    var low = 0
    var high = list.count - 1
    
    // The middle element in the list
    var mid = (low + high) / 2
    var guess = list[mid]
    
    
    // While segmetn for search bigger then one, check middle element
    while low <= high {
        mid = (low + high) / 2
        guess = list[mid]
        
        // Finde item
        if guess == item {
            return mid
            
        // more
        } else if guess > item {
            high = mid - 1
            
        // less
        } else {
            low = mid + 1
        }
    }
    
    return nil
}

var list = [1, 2, 3, 4, 5, 6]

binSearch(list: list, item: 4)
