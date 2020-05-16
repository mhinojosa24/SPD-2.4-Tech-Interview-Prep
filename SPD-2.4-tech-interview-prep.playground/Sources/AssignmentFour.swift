import Foundation


public class Node<T>{
    public var value: T?
    public var next: Node<T>?
    
    public init(value: T){
        self.value = value
    }
}

public class LinkedList<T> {
    public init() {}
    
    public var head: Node<T>?
    public var tail: Node<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node<T>? {
        return head
    }
    
    public func append(value: T) {
        let newNode = Node(value: value)
        if var h = head {
            while h.next != nil {
                h = h.next!
            }
            h.next = newNode
        } else {
            head = newNode
        }
        self.tail = newNode
    }
    
    public func rotate(k: Int){
        if self.isEmpty {
            return
        }
        for _ in 1...k{
            let tempVal: T? = self.head?.value
            var currentNode = self.head
            
            while currentNode?.next != nil {
                currentNode?.value = currentNode?.next?.value
                currentNode = currentNode?.next
            }
            currentNode?.value = tempVal
        }
    }
}
