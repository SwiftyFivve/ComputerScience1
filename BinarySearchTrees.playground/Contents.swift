//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var randomNums: Array<Int> = [];

for(var i=0; i<20; i++){
    var randomNum = Int (arc4random_uniform(100));
    randomNums.append(randomNum);
}




class BinaryTree<T: Comparable> {

    var key: T?
    var left: BinaryTree?
    var right: BinaryTree?
    
    init(){
        
    }
    
    
    func add(key: T){
        
        if(self.key == nil){
            self.key = key;
            return;
        }
        
        //check left side
        if(key < self.key){
            
            if(self.left != nil){
                left!.add(key);
            } else {
                
                var leftChild: BinaryTree = BinaryTree();
                leftChild.key = key;
                self.left = leftChild;
            }
        }
        
        //Check left side
        if(key>=self.key){
            
            if(self.right != nil){
                right!.add(key);
            } else {
                
                var rightChild: BinaryTree = BinaryTree();
                rightChild.key = key;
                self.right = rightChild;
            }
        }
    }
    
//    func process(tree: BinaryTree<Int>){
//        add(tree.key!);
//        if tree.left != nil {
//            process(tree.left!);
//        }
//        if tree.right != nil {
//            process(tree.right!);
//        }
//    }
    
    
    func remove(value: Int){
        if self.key == nil {
            
        }
    }
    
    func delete(key: Int, tree: BinaryTree<Int>){
        
        if self.key == nil {
            if tree.right != nil {
                var leftTemp = tree.left;
                var childLeft = tree.right?.left;
                tree.key = tree.right?.key;
                tree.right = tree.right?.right;
                tree.left = childLeft;
                
            }
        }
        
        
    }
    
//    func delete(key: T){
//        
//        if(self.key == nil){
//            return;
//        }
//        
//        if(key == self.key){
//            if(self)
//        }
//        
//    }
    
    
}



var root = BinaryTree<Int>();

for n in randomNums {
    root.add(n);
}

func preOrder (root: BinaryTree<Int>?) ->[Int]{
    if root == nil {
        return [];
    }
    var result: [Int] = [];
    
    result.append(root!.key!);
    result += preOrder(root!.left);
    result += preOrder(root!.right);
    
    
    return result;
}

func inOrder (root: BinaryTree<Int>?) ->[Int]{
    if root == nil {
        return [];
    }
    var result: [Int] = [];
    
    result += inOrder(root!.left);
    result.append(root!.key!);
    result += inOrder(root!.right);
    
    
    return result;
}

func postOrder (root: BinaryTree<Int>?) ->[Int]{
    if root == nil {
        return [];
    }
    var result: [Int] = [];
    
    result += postOrder(root!.left);
    result += postOrder(root!.right);
    result.append(root!.key!);
    
    return result;
}


preOrder(root);
inOrder(root);
postOrder(root);



//root.delete(1);
//inOrder(root);


root.add(1);
inOrder(root);

