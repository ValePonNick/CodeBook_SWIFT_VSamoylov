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

// создание кортежа с ТРЕМЯ параметрами
// - это кортеж, содержащий ТРИ вложенных кортежа. Каждый: (String, Int)
let violations = (speeding: ("превышение скорости", 7), drunkDriving: ("вождение нетрезвым", 12), withoutLicense: ("без прав", 8))
print(violations)
// доступ к ЭЛЕМЕНТАМ кортежа
// 1. по ИНДЕКСУ
let speedingCount = violations.speeding.1
let drunkDrivingCount = violations.drunkDriving.1
let withoutLicenseCount = violations.withoutLicense.1
// 2. по ИМЕНОВАННОМУ ЭЛЕМЕНТУ
print("Тип нарушения: \(violations.speeding.0), Количество: \(violations.speeding.1)")
print("Тип нарушения: \(violations.drunkDriving.0), Количество: \(violations.drunkDriving.1)")
print("Тип нарушения: \(violations.withoutLicense.0), Количество: \(violations.withoutLicense.1)")

// пример использования этого кортежа в ФУНКЦИИ:
func printViolations(violations: (speeding: (String, Int), drunkDriving: (String, Int), withoutLicense: (String, Int))) {
    print("Тип нарушения: \(violations.speeding.0), Количество: \(violations.speeding.1)")
    print("Тип нарушения: \(violations.drunkDriving.0), Количество: \(violations.drunkDriving.1)")
    print("Тип нарушения: \(violations.withoutLicense.0), Количество: \(violations.withoutLicense.1)")
}
printViolations(violations: violations)
/* этот код выведен инфу о КАЖДОМ типе нарушения и кол-ве нарушителей; удобно группирует связанные данные и упрощает доступ к ним */

// 4. создай кортеж напарника и задай другие значения
let violations2 = (
    speeding: ("превышение скорости", 11),
    drunkDriving: ("вождение нетрезвым", 6),
    withoutLicense: ("без прав", 13)
)
print(violations2)
// 5. создай 3-ий кортеж как РАЗНИЦУ между первым и вторым
var differencesViolations = (
    speeding: (violations.speeding.1 - violations2.speeding.1),
    drunkDriving: (violations.drunkDriving.1 - violations2.drunkDriving.1),
    withoutLicense: (violations.withoutLicense.1 - violations2.withoutLicense.1)
).self

// ура! получилось!!!
// вывести на консоль ТРЕМЯ способами
// 5.1 - вывести кортеж ЦЕЛИКОМ
print(differencesViolations)
// 5.2 вывести по именованному значению
print(differencesViolations.drunkDriving)
print(differencesViolations.speeding)
print(differencesViolations.withoutLicense)
// вывести по индексу
print(differencesViolations.drunkDriving)
// по именованному элементу
print(differencesViolations.0)
print(differencesViolations.1)
print(differencesViolations.2)
// задача решена
