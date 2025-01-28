import UIKit

// 1. КОНСТАНТЫ, ПЕРЕМЕННЫЕ и ТИПЫ ДАННЫХ
let numberInt = 12
var numDouble = 120.2
let numFloat = 12.12
var name = "Valery"
func minMax (array:[Int]) -> (min: Int, max: Int)? {
    guard !array.isEmpty else { return nil }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1...] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return(currentMin, currentMax)
}

if let bounds = minMax(array: [8, -2, 12, 36, 44, -21]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}
/* COMMENTS:
1.
2.
3.
4.
5. */
