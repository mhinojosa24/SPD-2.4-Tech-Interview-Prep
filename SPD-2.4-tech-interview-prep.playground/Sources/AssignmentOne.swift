import Foundation

/*
 Problem 1: Given an array a of n numbers and a target value t, find two numbers whose sum is t
 Example: a=[5, 3, 6, 8, 2, 4, 7], t=10 ⇒ [3, 7] or [6, 4] or [8, 2]
 */

// Solution 1
public func findTargetSum(arr: [Int], target: Int) -> [Int] {
    var valuePair = [Int]()
    var found = false
    
    for numOne in arr {
        let targetSum = target - numOne
        
        if found {
            break
        }
        
        for numTwo in arr {
            if targetSum == numTwo {
                valuePair.append(numOne)
                valuePair.append(targetSum)
                found = true
                break
            }
        }
    }
    return valuePair
}


// Solution 2
public func findTargetSumTwo(arr: [Int], target: Int) -> [Int] {
    var valuePairSum: [Int:Int] = [:]
    
    for i in 0..<arr.count {
        if valuePairSum[target - arr[i]] != nil {
            return [valuePairSum[target - arr[i]]!, i]
        }
        valuePairSum[arr[i]] = i
    }
    return []
}


/*
Problem 2: Given an array a of n numbers and a count k find the k largest values in the array a.
Example: a=[5, 1, 3, 6, 8, 2, 4, 7], k=3 ⇒ [6, 8, 7]
*/


public class FindKLargestNum {
    
    // Solution 1
    public static func findLargestNum(arr: [Int], k: Int) -> [Int] {
        var sum = [Int]()
        var arr = arr
        arr.sort()
        arr.reverse()
        
        if arr.count == 0 { return sum }
        
        if arr.count == k { return arr }
        
        for i in 0..<k {
            sum.append(arr[i])
        }
        
        return sum
    }
    
    
    // Solution 2
    public static func findLargestNumTwo(nums: [Int], k: Int) -> Int {
        var nums = nums
        
        if nums.count == 0 { return -1 }
        
        return partition(&nums, nums.count - 1, nums.count - k, k)
    }
    
    static func partition(_ nums: inout [Int], _ start: Int, _ end: Int, _ k: Int) -> Int {
        if start > end {
            return 0
        }
        
        let pivot = nums[end]
        var nums = nums
        var left = start
        
        for i in start..<end {
            if nums[i] <= pivot {
                if left != i {
                    swap(&nums,left, i)
                }
                left += 1
            }
        }
        if left != end {
            swap(&nums, left, end)
        }
        
        if left == k {
            return nums[left]
        } else if left < k {
            return partition(&nums, left + 1, end, k)
        } else {
            return partition(&nums, start, left - 1, k)
        }
    }
    
    static func swap(_ nums: inout [Int], _ start: Int, _ end: Int) {
        let temp = nums[start]
        nums[start] = nums[end]
        nums[end] = temp
    }
}




