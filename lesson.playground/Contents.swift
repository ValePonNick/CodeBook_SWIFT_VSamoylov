import UIKit

var greeting = "Hello, playground"
// создай массив чисел
var nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// создай цикл - печать четных / НЕчетных
for num in nums {
    if num % 2 == 0 {
        print(num)
    }
}

var numIndex = 0 // оставь только индекс
let size = nums.count

while numIndex < size {
    let num = nums[numIndex]
    if num % 2 != 0 {
        print(num)
    }
    numIndex += 1
}

