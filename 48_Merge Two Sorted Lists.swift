/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

 class ListNode: CustomStringConvertible {
    var val: Int
    var next: ListNode?

    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }

    var description: String {
        next == nil ? "\(val)" : "\(val), \(next!)"
    }
 }


class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var list1 = list1
        var list2 = list2
        
        var cont = true

        var nodes: ListNode!
        
        while cont {
            var add1 = true
            var add2 = true
            
            if let val1 = list1?.val,
               let val2 = list2?.val {
                
                if val1 > val2 {
                    nodes  = ListNode(val2, nodes)
                    
                    if let nextVal2 = list2?.next?.val,
                    val1 > nextVal2 {
                        add1 = false
                    } else {
                        nodes = ListNode(val1, nodes)
                    }
                } else {
                    nodes  = ListNode(val1, nodes)
                    
                    if let nextVal1 = list1?.next?.val,
                    val2 > nextVal1 {
                        add2 = false
                    } else {
                        nodes = ListNode(val2, nodes)    
                    }                    
                }
            } else if let val1 = list1?.val {
                nodes = ListNode(val1, nodes)
            } else if let val2 = list2?.val {
                nodes = ListNode(val2, nodes)
            }

            list1 = add1 ? list1?.next : list1
            list2 = add2 ? list2?.next : list2
            
            cont = (list1?.val != nil || list2?.val != nil)
        }

        var newList: ListNode!

        while nodes != nil {
            newList = ListNode(nodes.val, newList)
            nodes = nodes.next
        }
        
        return newList
    }
}

// let list1 = ListNode(5)
let list1 = ListNode(1, ListNode(2, ListNode(4)))
let list2 = ListNode(1, ListNode(3, ListNode(4)))


print(Solution().mergeTwoLists(list1, list2)!)
