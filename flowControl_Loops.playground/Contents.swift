import UIKit

// 6. LOOPS: управление потоком: ЦИКЛЫ

//1. Создай массив "дни в месяцах"
// создай массив кортежей
var daysInMonths = [(month: String, day: Int)] ()
daysInMonths = [
    ("january", 31),
    ("february", 28),
    ("march", 31),
    ("april", 30),
    ("may", 31),
    ("june", 30),
    ("jule", 30),
    ("august", 31),
    ("september", 30),
    ("october", 31),
    ("november", 30),
    ("december", 31)
]

// 1.2 Распечатай элементы, содержащие кол-во дней в каждом месяце, используя цикл 'for' и этот масив
for day in daysInMonths {
    print("Месяц: \(daysInMonths[0].month), Дней: \(daysInMonths[0].day)")
    print("Месяц: \(daysInMonths[1].month), Дней: \(daysInMonths[1].day)")
    print("Месяц: \(daysInMonths[2].month), Дней: \(daysInMonths[2].day)")
    print("Месяц: \(daysInMonths[3].month), Дней: \(daysInMonths[3].day)")
    print("Месяц: \(daysInMonths[4].month), Дней: \(daysInMonths[4].day)")
    print("Месяц: \(daysInMonths[5].month), Дней: \(daysInMonths[5].day)")
    print("Месяц: \(daysInMonths[6].month), Дней: \(daysInMonths[6].day)")
    print("Месяц: \(daysInMonths[7].month), Дней: \(daysInMonths[7].day)")
    print("Месяц: \(daysInMonths[8].month), Дней: \(daysInMonths[8].day)")
    print("Месяц: \(daysInMonths[9].month), Дней: \(daysInMonths[9].day)")
    print("Месяц: \(daysInMonths[10].month), Дней: \(daysInMonths[10].day)")
    print("Месяц: \(daysInMonths[11].month), Дней: \(daysInMonths[11].day)")
   
}
/* 2. создай в 'if' и в 'switch' программу, которая исходя из возраста человека определит куда ему идти: в садик, школу, в универ, на работу, на пенсию */
// 2.1 'if-else'
func determinateActivity(age: Int) -> String {
    if age < 3 {
        return "Stay at home"
    } else if age >= 3 && age <= 7 {
        return "Go to kindergarten"
    } else if age >= 7 && age <= 18 {
        return " Go to school"
    } else if age >= 18 && age <= 55 {
        return "Go to work"
    } else {
        return "Go to pension"
    }
}
// пример испольования:
let Ann = 56
print(determinateActivity(age: Ann))

// 2.2 'switch'
func determinateDestination(age: Int) -> String {
    switch age {
    case 0...2:
        return "Stay at home"
    case 3...7:
        return "Go to kindergarten"
    case 7...18:
        return " Go to school"
    case 18...55:
        return "Go to work"
    default:
        return "Go to pension"
    }
}
// пример испольования:
let Alex = 16
print(determinateDestination(age: Alex))

// 6.3 в 'if' и в 'switch' создать систему оценивания студентов по 12 балльной системе и через 'print' дать оценку их знаниям
// 6.3.1 'if-else'
func determinateActivity(scores: Int) -> String {
    if scores < 3 {
        return "Знания очень слабые"
    } else if scores >= 3 && scores <= 6 {
        return "Знания низкие"
    } else if scores >= 6 && scores <= 8 {
        return " Знания есть, но бессистемные"
    } else if scores >= 8 && scores <= 10 {
        return "Знания хорошие"
    } else {
        return "Знания отличные!"
    }
}
// пример испольования:
let Stiven = 11
print(determinateActivity(scores: Stiven))

// 6.3.2 'switch'
func determinateActivities(scores: Int) -> String {
    switch scores {
    case 0...3:
        return "Знания с большими пробелами"
    case 3...6:
        return "Знания есть, но они бессистемные"
    case 6...8:
        return "Знания есть, но нет понимания"
    case 8...10:
        return "Есть знания и умения"
    default:
        return "Есть знания, умения и уверенные навыки!"
    }
}
// пример испольования:
let Artur = 12
print(determinateActivities(scores: Artur))

// 6.4 создай цикл в цикле: в первом цикле интервал 20 раз, во втором: доедем до 12 и выйти из ВСЕХ циклов
// вар. 1 используй МЕТКИ для циклов, когда сумма достигнет 12:
outerLoop: for i in 1...20 {
    for j in 1...15 {
        let sum = i + j
        print("сумма \(sum)")
        if sum == 12 {
            print("выходим из обоих циклов")
            break outerLoop
        }
    }
}
// вар.2 используй ФЛАГ 'exitAll':
var exitAll = false
for i in 1...20 {
    if exitAll {
        break
    }
    for j in 1...20 {
        let sum = i + j
        print("сумма: \(sum)")
        if sum == 12 {
            print("выходим из обоих циклоа")
            exitAll = true
            break
        }
        
    }
}
/* комментарий: когда сумма жостигает 12, устанавливается флаг 'exitAll' - после выхода из внутреннего цикла также происходит выход из внешнего цикла */

