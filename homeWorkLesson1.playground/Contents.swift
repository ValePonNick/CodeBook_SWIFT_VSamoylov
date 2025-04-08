import UIKit

/* Задача 1. объяви константу 'firstString' со значением 'I can' и 'secondString' со значением 'code'. Выведи фразу на консоль: 'I can code!' */

let firstString = "I can"
let secondString = "code"

print(firstString + " " + secondString + "!") // КОНКАТЕНАЦИЯ строк
print("\(firstString) \(secondString)!") // ИНТЕРПОЛЯЦИЯ строк

// Задача 2:

let alenaAge = 6
let alenaAgeInTenYears = alenaAge + 10
let daysInOneYear = 365.25

let passedAllDays = Float(alenaAgeInTenYears) * Float(daysInOneYear)

print("Возраст Алены \(alenaAge) лет. Через 10 лет Алене будет \(alenaAgeInTenYears). С момента рождения Алены прошло \(passedAllDays) дней.")

// вар. 2 - СЛОЖНЫЙ + ТОЧНЫЙ
// 2.1 объяви свойство 'myAge' и присвой ему значение своего возраста
let myAge = 58

/* 2.2 объяви свойство 'myAgeInTenYears' и присвой ему значение возраста через 10 лет (используй константу 'myAge' и оператор присвоения */
let myAgeInTenYears = myAge + 10

/* 2.3 Объяви свойство 'daysInYear' и присвой ему значение 365.25 (число дней в году с учетом високосных годов). Тип данных, который свойство примет по умолчанию - НЕ менять */
let daysInYear = 365.25

/* 2.4 Объяви свойство daysPassed c типом Float и присвой ему значение кол-ва дней с момента вашего рождения + 10 лет. Используй для этого myAgeInTenYears + daysInYear */

let daysPassed = Float(myAgeInTenYears) * Float(daysInYear)

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

// вар.3 БОЛЕЕ ТОЧНЫЙ + ПОНЯТНЫЙ

let tomAge = 58
let tomAgeInTenYears = tomAge + 10
let daysIntoYear = 365.25

let allDaysPassed = Float(tomAgeInTenYears) * Float(daysIntoYear)

let dayBirth = 2
let monthBeforeBirth = 3
let monthsOneYear = 12
let daysOneMonth = daysIntoYear / Double(monthsOneYear)

let daysUntilBirthThisYear = Double(monthBeforeBirth) * daysOneMonth + Double(dayBirth)
let daysSinceLastBirth = Double(allDaysPassed) - daysUntilBirthThisYear

print("Возраст Тома \(tomAge). Через 10 лет Тому будет \(tomAgeInTenYears). С момента рождения пройдет \(daysSinceLastBirth).")
/*
 Задача 3: вычислить площадь и пеример прямоугольного треугольника: катет AC = 8.0 катет CB = 6.0. Гипотенузу AB вычисли при помощи func sqrt(Double), поместив в скобки вместо Double сумму квадратов катетов. NB: функцию pow НЕ используй. */

// длины катетов
let sideAC = 8.0
let sideCB = 6.0

// вычисли площадь треугольника
let triangleArea = sideAC * sideCB / 2
let sideAB = sqrt(sideAC * sideAC + sideCB * sideCB) // вычисли гипотенузу

// вычислить периметр треугольника
let trianglePerimeter = sideAB + sideCB + sideAC
print("Площадь треугольника - \(triangleArea).")
print("Периметр треугольника - \(trianglePerimeter).")

/* COMMENTS:
Функция `sqrt` вычисляет квадратный корень из суммы квадратов катетов. */

/* Базовые операции с типами данных:
Задача 4: Объявите константы `a` и `b` типа `Int` и присвойте им значения 10 и 5 соответственно.
     •    Вычислите сумму, разность, произведение и частное `a` и `b`.
     •    Выведите результаты на консоль. */
 
let a = 10
let b = 5

let sum = a + b
let difference = a - b
let product = a * b
let quotient = Double(a) / Double(b)

print("Сумма чисел: \(sum), разность чисел: \(difference), произведение чисел: \(product), частное чисел: \(quotient).")
 
 /* Задача 5: Приведение типов:
Объяви константу `x` типа `Int` и присвой ей значение 10. Объяви константу `y` типа `Double` и присвой ей значение 5.5. Вычисли сумму `x` и `y`, приведя `x` к типу `Double`. Выведи результат на консоль. */
let x = 10
let y = 5.5

let summa = Double(x) + y

print(summa)

/* Задача 6: Работа с типами и операциями:
Объяви константы `age` типа `Int` и `height` типа `Double`, присвой им значения 25 и 1.75 соответственно. Вычисли произведение `age` и `height`, приведя `age` к типу `Double`. Выведи результат на консоль. Вычисли и выведи среднее значение `age` и `height`, приведя `age` к типу `Double`. */

let age = 25
let height = 1.75

let productNum = Double(age) * height
let average = (Double(age) + height) / 2

print(productNum)
print(average)
