//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var nums = [0,1,2,3,4,5,6,7,8,9];

//Merge Sort


func mergeSort(nums: [Int]) {
    var copy: [Int] = [Int](count: nums.count, repeatedValue: 0);
    mergeSort(nums, copy, 0, nums.count-1);
    
    
}

func mergeSort(nums: [Int], copy: [Int], low: Int, high: Int)->Void{
    if (low >= high) {return};
    
        var middle: Int = (low + high)/2;
        mergeSort(nums, copy, low, middle);
        mergeSort(nums, copy, middle, high);
        merge(nums, copy, low, middle+1, high);
    
    
}


func merge(var nums: [Int], var copy: [Int], low: Int, middle:Int, var high:Int)->[Int]{
    
    var leftEnd = middle;
    var leftStart = low;
    var numsElement = low + high + 1;
    
    
    
    while(leftStart <= leftEnd && middle <= high) {
        if nums[leftStart] <= nums[middle] {
            copy[low+1] = nums[leftStart+1];
        } else {
            copy[low+1] = nums[middle+1];
        }
    }
    
    while(leftStart <= leftEnd){
        copy[low+1] = nums[leftStart+1];
    }
    while(middle <= high){
        copy[low+1] = nums[middle+1];
    }
    for var i=0; i < numsElement; ++i, high--  {
        nums[high] = copy[high];
    }
    
    return copy;
}

//mergeSort(nums);


//Fibonacci Sequance

var inNum = 6;
var x = 0;
var j = 1;
var outNum = 7;

func fiboSequance(var inNum: Int, var x: Int, var j: Int, var outNum: Int)->Int{
    
    for var i=1; i<inNum; ++i {
        outNum = x+j;
        x = j;
        j = outNum;
    }
    
    return outNum;
}


fiboSequance(outNum, x, j, outNum);



//Binary Search



func binarySearch(nums: [Int], target: Int) -> Int {
    return binarySearch(nums, target, 0, nums.count-1);
}


func binarySearch(binaryArray: [Int], searchNum: Int, var indexLow: Int, var high: Int) -> Int {
    
    if(indexLow>high){
        return -1;
    } else {
    
    var middle: Int = (indexLow+high)/2;
    
    if(nums[middle] == searchNum){
        return middle;
    } else if (nums[middle] < searchNum){
        return binarySearch(nums, searchNum, middle+1, high);
    } else {
        return binarySearch(nums, searchNum, indexLow, middle-1);
    }
    }
    
}



binarySearch(nums, 7);










