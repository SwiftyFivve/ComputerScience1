//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var nums: [Int] = [];

for(var i=0; i<1001; i++){
    var randomNum = Int (arc4random_uniform(1000));
    nums.append(randomNum);
}


// QUICK SORT

func quickSort(nums: [Int]) -> [Int] {
    if(nums.count == 0){
        return [];
    }
    
    let pivotValue = nums[0];
    let smaller = filter(nums, { $0 < pivotValue });
    let greater = filter(nums, { $0 > pivotValue });
    
    return quickSort(smaller) + Array(arrayLiteral: pivotValue) + quickSort(greater);
}

quickSort(nums);


class QNode<T> {
    var key: T?
    var next: QNode?
}


class Stack<T> {
    
    var top: Int = -1;
    var items: [T] = [];
    var size: Int = 7;
    
    init(){
        top = -1;
        items = [T]();
        size = 7;
    }
    
    init(size:Int) {
        top = -1;
        items = [T]();
        self.size = size;
    }
    
    func push(item: T) -> Bool {
        if !isFull() {
            items.append(item);
            top++
            return true
        }
        return false
    }
    
//    func pop() -> Bool {
//        
//    }
    
    
    func isFull() -> Bool {
        return top == (size-1);
    }
    
}
