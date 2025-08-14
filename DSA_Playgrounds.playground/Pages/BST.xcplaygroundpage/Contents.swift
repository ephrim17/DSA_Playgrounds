import Foundation


class Node {
    var key : Int
    var left : Node?
    var right : Node?
    
    init(_ key : Int) {
        self.key = key
        self.left = nil
        self.right = nil
    }
}

class BST {
    
    var root: Node?
    
    func insert(_ key: Int) {
        root = insertItem(root, key)
    }
    
   private func insertItem(_ node : Node?, _ key : Int) -> Node? {
        guard let node = node else {
            let node = Node(key)
            return node
        }
        
        if key < node.key {
            node.left = insertItem(node.left, key)
        }
       if key > node.key {
            node.right = insertItem(node.right, key)
        }
        return node
    }
    
}

let bst = BST()
bst.insert(25)
bst.insert(3)
bst.insert(2)
bst.insert(1)


print(bst.root?.left?.key ?? 0)

