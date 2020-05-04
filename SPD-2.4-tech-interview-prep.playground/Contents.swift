import UIKit



/*
 Given an array a of n numbers and a target value t, find two numbers whose sum is t
 */

// Solution 1
func findTargetSum(arr: [Int], target: Int) -> [Int] {
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
let sumOfTarget = findTargetSum(arr: [5, 3, 6, 8, 2, 4, 7], target: 9)
//print(sumOfTarget)


// Solution 2
func findTargetSumTwo(arr: [Int], target: Int) -> [Int] {
    var valuePairSum: [Int:Int] = [:]
    
    for i in 0..<arr.count {
        if valuePairSum[target - arr[i]] != nil {
            return [valuePairSum[target - arr[i]]!, i]
        }
        valuePairSum[arr[i]] = i
    }
    return []
}
let sumOfTargetTwo = findTargetSum(arr: [5, 3, 6, 8, 2, 4, 7], target: 9)
print(sumOfTargetTwo)
