struct HR30DCDay24: ExerciceContent {
    // Start of class Node
    class Node {
        var data: Int
        var next: Node?

        init(d: Int) {
            data = d
        }
    } // End of class Node

    // Start of class LinkedList
    class LinkedList {
        func insert(head: Node?, data: Int) -> Node? {
            if head == nil {
                return Node(d: data)
            }

            head?.next = insert(head: head?.next, data: data)

            return head
        }

        func display(head: Node?) -> String {
            var result = "\(head!.data) "
            
            while head?.next != nil {
                result += "\(head!.next!.data) "
                head?.next = head?.next?.next
            }
            
            return result
        }
        // Start of function removeDuplicates
        func removeDuplicates(head: Node?) -> Node? {
            guard let head = head else {
                return nil
            }
            
            if let next = removeDuplicates(head: head.next), head.data == next.data {
                head.next = next.next
            }
            
            return head
        } // End of function removeDuplicates
    } // End of class LinkedList

    var head: Node?
    let linkedList = LinkedList()
    
    var task: String {
        """
        A Node class is provided for you in the editor. A Node object has an integer data field, `data, and a Node instance pointer, `next`, pointing to another node (i.e.: the next node in a list).
                
        A removeDuplicates function is declared in your editor, which takes a pointer to the `head` node of a linked list as a parameter. Complete removeDuplicates so that it deletes any duplicate nodes from the list and returns the head of the updated list.
                
        Note: The `head` pointer may be null, indicating that the list is empty. Be sure to reset your `next` pointer when performing deletions to avoid breaking the list.
        """
    }
    
    var input: String {
        linkedList.display(head: head)
    }
    
    var output: String {
        linkedList.display(head: linkedList.removeDuplicates(head: head))
    }

    init() {
        head = linkedList.insert(head: head, data: 1)
        head = linkedList.insert(head: head, data: 2)
        head = linkedList.insert(head: head, data: 2)
        head = linkedList.insert(head: head, data: 3)
        head = linkedList.insert(head: head, data: 3)
        head = linkedList.insert(head: head, data: 4)
    }
}
