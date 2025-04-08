import UIKit

/* Задача 1. объяви константу 'firstString' со значением 'I can' и 'secondString' со значением 'code'. Выведи фразу на консоль: 'I can code!' */

let firstString = "I can "
let secondString = "code "
print(firstString + secondString + "!")

// Задача 2:

// 2.1 объяви свойство 'myAge' и присвой ему значение своего возраста
let myAge = 58

/* 2.2 объяви свойство 'myAgeInTenYears' и присвой ему значение возраста через 10 лет (используй константу 'myAge' и оператор присвоения */
let myAgeInTenYears = myAge + 10

/* 2.3 Объяви свойство 'daysInYear' и присвой ему значение 365.25 (число дней в году с учетом високосных годов). Тип данных, который свойство примет по умолчанию - НЕ менять */
let daysInYear = 365.25

/* 2.4 Объяви свойство daysPassed c типом Float и присвой ему значение кол-ва дней с момента вашего рождения + 10 лет. Используй для этого myAgeInTenYears + daysInYear */

let daysPassed: Float = Float(myAgeInTenYears) * Float(daysInYear)

// Дополнительные переменные для учета дня и месяца рождения
let dayOfBirth = 2.0
let monthBeforeMyBirth = 3.0
let monthsInYear = 12.0
let daysInOneMonth: Double = daysInYear / monthsInYear

// Более точный способ учесть день и месяц рождения
let daysSinceBirth = Double(myAge) * daysInYear
let daysUntilBirthdayThisYear = Double(monthBeforeMyBirth) * daysInOneMonth + Double(dayOfBirth)
let daysSinceLastBirthday = daysSinceBirth - daysUntilBirthdayThisYear

// Добавляем 10 лет
let totalDays = daysSinceLastBirthday + Double(10) * daysInYear

/* 2.5 При помощи функции 'print()' выведи на консоль фразу "Мой возраст <...> лет. Через 10 лет мне будет <...> лет. С момента рождения пройдет <...> дней." */
print("Мой возраст \(myAge). Через 10 лет мне будет \(myAgeInTenYears). С момента рождения пройдет \(totalDays).")

/* COMMENTS:
 1.  более точный способ учесть день и месяц рождения, хотя и упрощённый. Он рассчитывает дни с момента рождения и до последнего дня рождения, а затем добавляет 10 лет.
 2. учитывает день и месяц рождения. */

// вар.2
let myAge2 = 58
let myAgeInTenYears2 = myAge + 10
let daysInYear2 = 365.25

let daysPassed2: Float = Float(myAgeInTenYears) * Float(daysInYear)

let dayOfBirth2 = 2.0
let monthBeforeMyBirth2 = 3.0
let monthsInYear2 = 12.0
let daysInOneMonth2: Double = daysInYear2 / monthsInYear2

let daysUntilBirthdayThisYear2 = Double(monthBeforeMyBirth2) * daysInOneMonth2 + Double(dayOfBirth2)

let daysSinceLastBirthday2 = Double(daysPassed2) - daysUntilBirthdayThisYear2

print("Мой возраст \(myAge2). Через 10 лет мне будет \(myAgeInTenYears2). С момента рождения пройдет \(daysSinceLastBirthday2).")
/*
 Задача 3: вычислить площадь и пеример прямоугольного треугольника: катет AC = 8.0 катет CB = 6.0. Гипотенузу AB вычисли при помощи func sqrt(Double), поместив в скобки вместо Double сумму квадратов катетов. NB: функцию pow НЕ используй. */

// длины катетов
let oneSide = 8.0
let secondSide = 6.0

// вычисли площадь треугольника
let squreOfTriangle = oneSide * secondSide / 2
let hypotenuse = sqrt(oneSide * oneSide + secondSide * secondSide)

// вычислить периметр треугольника
let perimeterOfTriangle = oneSide + secondSide + hypotenuse
print("Площадь треугольника - \(squreOfTriangle).")
print("Периметр треугольника - \(perimeterOfTriangle).")

/* COMMENTS:
Функция `sqrt` вычисляет квадратный корень из суммы квадратов катетов. */
