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



