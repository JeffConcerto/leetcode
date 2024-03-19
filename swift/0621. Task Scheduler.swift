class Solution {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        let counter = tasks.reduce(into:[:]) { $0[$1, default: 0] += 1 }
        var heap = Heap<Int>() { $0 > $1 }

        for freq in counter.values {
            heap.insert(freq)
        }

        var intervals = 0
        var tasks = 0
        var restock = [Int]()

        while !heap.isEmpty || !restock.isEmpty {
            if var num = heap.remove() {
                if num > 1 {
                    restock.append(num-1)
                }
                intervals += 1
                tasks += 1
            } else {
                if tasks <= n {
                    intervals += (n+1)-tasks
                    tasks = 0
                }
            
                for fre in restock {
                    heap.insert(fre)
                }
                restock = []
            }
           
            if tasks > n {
                for fre in restock {
                    heap.insert(fre)
                }
                restock = []
                tasks = 0
            }
        }

        return intervals
    }
}

struct Heap<T: Comparable> {
    private(set) var arr: [T]
    private let sortMethod: (T,T) -> Bool
    init(arr: [T] = [], sortMethod: @escaping (T,T) -> Bool = { $0 < $1 }) {
        self.arr = arr
        self.sortMethod = sortMethod
    }
    
    var isEmpty: Bool { return arr.isEmpty }
    
    private func getParent(for index: Int) -> (element: T, index: Int) {
        guard index >= 0 && index < arr.count else {
             fatalError("Index \(index) out of range.")
        }
        let parentIndex = (index - 1) / 2
        return (arr[parentIndex], parentIndex)
    }
    
    private func getLeftChild(for index: Int) ->  Int? {
        guard index >= 0 && index < arr.count else {
             return nil
        }
        let leftChildIndex = index * 2 + 1
        guard leftChildIndex < arr.count else {
            return nil
        }
        
        return leftChildIndex
    }
    
    private func getRightChild(for index: Int) -> Int? {
        guard index >= 0 && index < arr.count-2 else {
            return nil
        }
        let rightChildIndex = index * 2 + 2
        guard rightChildIndex < arr.count else {
            return nil
        }
        
        return rightChildIndex
    }
    
    
    
    mutating func insert(_ element: T) {
        // - Add element to array:
        arr.append(element)
        // - Heapify Up:
        heapifyUp(from: arr.count-1)
    }
    
    mutating func remove() -> T? {
        guard !arr.isEmpty else { return nil }
        arr.swapAt(0, arr.count-1)
        let element = arr.removeLast()
        heapifyDown(from: 0)
        return element
    }
    
    func peek() -> T? {
        guard !arr.isEmpty else { return nil }
        return arr.first!
    }
    
    private mutating func heapifyUp(from index: Int) {
        // - Check if there are enough elements to sort:
        guard arr.count > 1 else { return }
        let element = arr[index]
        let (parent, parentIndex) = getParent(for: index)
        
        // - Check if child is higher priority:
        guard sortMethod(element, parent) else { return }
            
        arr.swapAt(index, parentIndex)
        heapifyUp(from: parentIndex)
    }
    
    private mutating func heapifyDown(from index: Int) {
        // - Check if there are enough elements to sort:
        guard arr.count > 1 else { return }
        let parent = arr[index]
        let leftChildIndex = getLeftChild(for: index) ?? -1
        let rightChildIndex = getRightChild(for: index) ?? -1
        
        if leftChildIndex == -1 && rightChildIndex == -1 { return }
        
        if leftChildIndex != -1 && rightChildIndex != -1 {
            let leftChild = arr[leftChildIndex]
            let rightChild = arr[rightChildIndex]
            if sortMethod(leftChild, rightChild) {
                // - left child has higher priority:
                if sortMethod(leftChild, parent) {
                    // - Left child has higher priority than parent:
                    arr.swapAt(leftChildIndex, index)
                    heapifyDown(from: leftChildIndex)
                }
            } else {
                // - right child has higher priority:
                if sortMethod(rightChild, parent) {
                    // - Left child has higher priority than parent:
                    arr.swapAt(rightChildIndex, index)
                    heapifyDown(from: rightChildIndex)
                }

            }
        } else if leftChildIndex == -1 && rightChildIndex == -1 {
            // - right child has higher priority:
            if sortMethod(arr[rightChildIndex], parent) {
                // - Left child has higher priority than parent:
                arr.swapAt(rightChildIndex, index)
                heapifyDown(from: rightChildIndex)
            }
        } else {
            // - left child has higher priority:
            if sortMethod(arr[leftChildIndex], parent) {
                // - Left child has higher priority than parent:
                arr.swapAt(leftChildIndex, index)
                heapifyDown(from: leftChildIndex)
            }
        }
    }
    
}

