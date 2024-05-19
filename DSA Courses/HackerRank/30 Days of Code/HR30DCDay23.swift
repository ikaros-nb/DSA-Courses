struct HR30DCDay23: ExerciceContent {
    // Start of Node class
    class Node {
        var data: Int
        var left: Node?
        var right: Node?

        init(d : Int) {
            data  = d
        }
    } // End of Node class

    // Start of Tree class
    class Tree {
        func insert(root: Node?, data: Int) -> Node? {
            if root == nil {
                return Node(d: data)
            }

            if data <= (root?.data)! {
                root?.left = insert(root: root?.left, data: data)
            } else {
                root?.right = insert(root: root?.right, data: data)
            }

            return root
        }
        
        struct Queue<T> {
            private var elements: [T] = []
        
            mutating func enqueue(_ element: T) {
                elements.append(element)
            }
      
            mutating func dequeue() -> T? {
                isEmpty ? nil : elements.removeFirst()
            }
            
            var isEmpty: Bool {
                elements.isEmpty
            }
        }
        
        var queue = Queue<Node>()

        func levelOrder(root: Node?) -> String {
            var result = ""
            
            guard let root = root else { return result }
            
            queue.enqueue(root)
            
            while !queue.isEmpty {
                let currentNode = queue.dequeue()!
                result += "\(currentNode.data) "
                
                if let leftNode = currentNode.left {
                    queue.enqueue(leftNode)
                }
                if let rightNode = currentNode.right {
                    queue.enqueue(rightNode)
                }
            }
            
            return result
        }

    } // End of Tree class

    private var root: Node?
    private let tree = Tree()
    
    var task: String {
        """
        A level-order traversal, also known as a breadth-first search, visits each level of a tree's nodes from left to right, top to bottom. You are given a pointer, `root`, pointing to the root of a binary search tree. Complete the levelOrder function provided in your editor so that it prints the level-order traversal of the binary search tree.
        
        Hint: You'll find a queue helpful in completing this challenge.
        """
    }
    
    var input: String {
        "3 5 4 7 2 1"
    }
    
    var output: String {
        tree.levelOrder(root: root)
    }

    init() {
        let node = Node(d: 3)
        node.left = Node(d: 2)
        node.right = Node(d: 5)
        node.left?.left = Node(d: 1)
        node.right?.left = Node(d: 4)
        node.right?.right = Node(d: 7)
        root = tree.insert(root: node, data: node.data)
    }
}
