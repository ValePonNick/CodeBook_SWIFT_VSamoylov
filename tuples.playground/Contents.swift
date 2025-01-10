import UIKit

// 5. TUPLES. КОРТЕЖИ.

// 5.1 создать кортеж с 3-5 значениями
let tupleFruits = (fruit: "Apple", count: 12, isFresh: true)

// вывести на консоль 3-мя способами:
// 5.1.1 вывод ЭЛЕМЕНТОВ кортежа по индексам
print(tupleFruits.0)
print(tupleFruits.1)
print(tupleFruits.0, tupleFruits.1, tupleFruits.2)
// или так:
print("fruit: \(tupleFruits.0)")
print("count: \(tupleFruits.1)")
print("fruit: \(tupleFruits.0), count: \(tupleFruits.1), isFresh: \(tupleFruits.2)")

tupleFruits.fruit
print(tupleFruits.fruit)
tupleFruits.count
print(tupleFruits.count)
tupleFruits.isFresh
print(tupleFruits.isFresh)
// 5.1.2 вывод кортежа НАПРЯМУЮ
print(tupleFruits)
// 5.1.3 вывод ЭЛЕМЕНТОВ кортежа с именованными полями
print(tupleFruits.fruit)
print(tupleFruits.count)
print(tupleFruits.fruit, tupleFruits.count, tupleFruits.isFresh)
// или так:
print("\(tupleFruits.fruit)")
print("\(tupleFruits.count)")
print("\(tupleFruits.fruit), \(tupleFruits.count), \(tupleFruits.isFresh)")
// 5.1.4 деконструкция кортежа
let (fruit, count, isFresh) = ("Apple", 12, true)
print(fruit)
print(count)
print(isFresh)
// комментарий: решена задача

/* 5.2 сотрудник ГАИ - создать кортеж с 3-мя параметрами:
 1 - превышение скорости: кол-во водителей
 2 - вождение нетрезвым: кол-во водителей
 3 - вождение без прав: кол-во водителей */

// создадим массив из кортежей
let raportPoliceOfficer: [(String, Int)]  = [("speeding:", 2), ("drunk:", 13), ("without a license:", 7)]
// вывести массив из кортежей в консоль
print(raportPoliceOfficer)
// 5.3 выведи КАЖДЫй параметр в консоль ТРЕМЯ способами:
// доступ к элементам массива
for i in raportPoliceOfficer {
    print("Задержано: \("speeding:")", 2)
    print("Задержано: \("drunk:")", 13)
    print("Задержано: \("without a license:")", 7)
}
// почему в консоли удвоение???

