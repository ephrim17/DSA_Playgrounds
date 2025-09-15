//: [Previous](@previous)

import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var newList = ListNode(0)
        var currentResultNode: ListNode? = newList
        
        var carryCount = 0
        
        var list1 = l1
        var list2 = l2
        print("\n")
        while list1 != nil || list2 != nil || carryCount > 0{
            print("\n while in")
            if let l1value = list1?.val, let l2value = list2?.val {
                var result = l1value + l2value + carryCount
                print("<<< result \(result)")
                print("<<< adding new node value == \(result%10) when L1: \(l1value) and L2: \(l2value)")
                var newValue = result % 10
                print("<<< newValue with newNode : \(newValue)")
                
                var newNode = ListNode(newValue)
                currentResultNode?.next = newNode
                currentResultNode = newNode
                
                carryCount =  result / 10
                print("<<< carryCount \(carryCount)")
                
                list1 = list1?.next
                list2 = list2?.next
            }
            
        }
        
        print("\n")
        print("Result Node \(newList.val)")
        var finalNode = newList.next
        print("finalNode start:  \(finalNode?.next?.val)")
        while finalNode != nil {
            if let value = finalNode?.val {
                print("new node \(value)")
            }
            finalNode = finalNode?.next
        }
        
        return newList.next
    }
}

let s = Solution()

let list1 = [2,4,3], list2 = [5,6,4]

func buildList(_ lists: [Int]) -> ListNode?{
    
    var head : ListNode?
    var currentNode : ListNode?
    
    for item in lists {
        if head?.val == nil {
            //print("IF For \(item)")
            head = ListNode(item)
            currentNode = head
        } else {
            var newNode = ListNode(item)
            currentNode?.next =  newNode
            currentNode = newNode
        }
    }
    
    print("\n <<< NODE LIST")
    var node = head
    print("Linked List: ", terminator: "")
    while node != nil {
        print(node!.val, terminator: " -> ")
        node = node?.next
    }
    return head
}

var listNode1 = buildList(list1)
var listNode2 = buildList(list2)

s.addTwoNumbers(listNode1, listNode2)
