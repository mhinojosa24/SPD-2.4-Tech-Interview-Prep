import UIKit

// Assignment one
// solution 1
let sumOfTarget = findTargetSum(arr: [5, 3, 6, 8, 2, 4, 7], target: 9)
//print(sumOfTarget)

// solution 2
let sumOfTargetTwo = findTargetSum(arr: [5, 3, 6, 8, 2, 4, 7], target: 9)
//print(sumOfTargetTwo)


//print(FindKLargestNum.findLargestNum(arr: [5, 1, 3, 6, 8, 2, 4, 7], k: 3))

//print(FindKLargestNum.findLargestNumTwo([5, 1, 3, 6, 8, 2, 4, 7], 3))
//print(suggestUsernames(userHandle: "iLoveDogs", handles: ["DogeCoin", "YangGang2020", "HodlForLife", "fakeDonaldDrumpf", "GodIsLove", "BernieOrBust"], k: 2))


let ll = LinkedList<Int>()

ll.append(value: 1)
ll.append(value: 2)
ll.append(value: 3)
ll.append(value: 4)
ll.append(value: 5)
ll.append(value: 6)
ll.append(value: 7)
ll.append(value: 8)
ll.append(value: 9)
ll.append(value: 10)

func rotateLinkedList(ll: LinkedList<Int>, k: Int){
    ll.rotate(k: k)
    print(ll.head?.value)
}

rotateLinkedList(ll: ll, k: 9)
