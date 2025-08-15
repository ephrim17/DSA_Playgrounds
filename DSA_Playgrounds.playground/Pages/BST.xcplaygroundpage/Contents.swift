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
    
    func isKeyPresent(_ key: Int) -> Bool {
        guard let node = root else {
            return false
        }
        let int = findItem(node, key)
        return (int == key)
    }
    
    private func findItem(_ node : Node?, _ key : Int) -> Int? {
        guard let node = node else {
            return nil
        }
        if key == node.key {
            return key
        } else if key < node.key {
            return findItem(node.left, key)
        } else if key > node.key {
            return findItem(node.right, key)
        }
        return nil
    }
    
    
    func minSSS(_ node: Node?) -> Node?{
        guard var currentNode = node else {
            return nil // Handle empty tree
        }
        
        while let left = currentNode.left {
            currentNode = left
        }
        return currentNode
    }
    
    func min(_ node: Node?) -> Node?{
        guard var currentNode = node else {
            return nil // Handle empty tree
        }
        if currentNode.left == nil {
            return currentNode
        } else {
            return min(currentNode.left)
        }
    }
    
    
    func delete(_ key: Int){
        root = deleteItem(&root, key)
    }
    
    func deleteItem(_  node: inout Node?, _ key: Int) -> Node? {
        if let currentNode = node {
            if key < currentNode.key {
                currentNode.left = deleteItem(&currentNode.left, key)
            } else if key > currentNode.key {
                currentNode.right = deleteItem(&currentNode.right, key)
            }
            else {
                print("Found node to delete \(currentNode.key)")
                
                //Leaf Node can be directly deleted - node with no child
                if currentNode.left == nil && currentNode.right == nil {
                    node = nil
                }
                
                //Node with one child
                else if currentNode.left == nil {
                    node = currentNode.right
                }
                else if currentNode.right == nil {
                    node = currentNode.left
                }
                
                //Node with two childs
                else {
                    print("<<< two child node >>>")
                    let minRightNode = min(currentNode.right) // Find inorder successor in the right subtree
                    
                    // Copy the inorder successor's key to the current node
                    currentNode.key = minRightNode!.key
                    
                    // Recursively delete the inorder successor from the right subtree
                    currentNode.right = deleteItem(&currentNode.right, minRightNode!.key)
                }
            }
        }
        return node
    }
    
}

let bst = BST()
let bstItems = [8, 6, 9]
for item in bstItems {
    bst.insert(item)
}

//MARK: Element Finder
print("Element Finder \(bst.isKeyPresent(9))")

//MARK: Minimum Element
print("Minimum Element: \(String(describing: bst.min(bst.root)?.key))")


//MARK: Delete Element
print("<<< BST Before >>>")
print(bst.root?.key)
print(bst.root?.left?.key)
print(bst.root?.right?.key)

bst.delete(8)

print("<<< BST After >>>")
print(bst.root?.key)
print(bst.root?.left?.key)
print(bst.root?.right?.key)
