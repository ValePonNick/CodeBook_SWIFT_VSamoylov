import UIKit

var greeting = "Hello, playground"

// стакан а = молоко
// стакан б = вода
// стакан temp = пуст
var a = 5
var b = 12

struct Playground {
    
    func swapNumbers(firstNum a:  inout Int, secondNum b:  inout Int) {
        var temp = a // перелили молоко в пустой стакан сохранили значение 'a' в константе
        a = b // перелили воду в стакан из-под молока присвоили значение a -> b
        b = temp // перелили из временного стакана молоко в стакан из-под воды
        // присвоили значение  b -> temp
    }
} //  мы пытаемся вызвать ФУНКЦИЮ - error!
let play = Playground()
play.swapNumbers(firstNum: &a, secondNum: &b)

print(a)
print(b)
