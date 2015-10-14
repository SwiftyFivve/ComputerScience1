//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var array1 = [5, 3, 10, 4, 8, 6];
var array2 = [1, 0];
var array3 = [5];
var array4 = [0, 1, 2, 3, 4, 5, 6];
var array5 = [0, 1, 2, 3, 2, 1, 0];
var array6 = [6, 5, 4, 3, 2, 1, 0];


//Selection Sort
    
for var i=0; i<array1.count; ++i {
    var hold = i;
    for var j=i+1; j<array1.count; ++j {
    
        if array1[j] < array1[hold] {
            hold = j;
        }
    }
    
    if hold != i {
        swap(&array1[i], &array1[hold]);
    }
    
}
println(array1);


//Bubble Sort

for var i=array1.count-1; i>0; --i {
    for var j=0; j<i; ++j{
        if array1[j] > array1[i]{
            swap(&array1[i], &array1[j]);
        }
    }
}
println(array1);


//Insertion Sort
for var i=1; i<array5.count; ++i{
        
    if array5[i] < array5[i-1] {
            
        var temp = array5[i];
        var hold = i;
            
        for var k=i-1; k>=0; --k{
            if array5[k] > temp {
                array5[k+1] = array5[k];
                hold = k;
            }
        }
        
        array5[hold] = temp;
    }
}

println(array5)






    
