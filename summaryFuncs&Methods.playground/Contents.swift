import UIKit

// SUMMARY: Funcs & Methods
/*
1. Функции - это автономные блоки кода, которые м.б. вызваны из ЛЮБОГО места программы. Функции НЕ принадлежан классу/структуре и НЕ ИМЕЮТ доступа к СВОЙСТВАМ/МЕТОДАМ класса. */
func greet(name: String, job: String) {
    print("Hello, my name - \(name), I'm - \(job)")
}
greet(name: "John Travolta", job: "actor")
/*
 2. МЕТОДЫ - это функции, которые ПРИНАДЛЕЖАТ class/struct/enum. Они имеют ДОСТУП к СВОЙСТВАМ и др. МЕТОДАМ своего класса / структуры. */
class Actor {
    var name: String
    var film: String
    var yearOfReleased: Int
    
    init(name: String, film: String, yearOfReleased: Int) {
        self.name = name
        self.film = film
        self.yearOfReleased = yearOfReleased
    }
    func infa() {
        print("In \(yearOfReleased), the main actor in the film '\(film)'was is \(name).")
    }
}
let actor = Actor(name: "Tom Hanks", film: "Cast Away", yearOfReleased: 2000)
print(actor.name) // Tom Hanks
print(actor.film) // Cast Away
print(actor.yearOfReleased) // 2000
actor.infa()

/* ЗАДАЧА: напиши функцию, которая рассчитывает периметр треугольника по длинам его сторон и метод для класса 'Triangle', который также вычисляет периметр треугольника */
var a = 3.14
var b = 2.22
var c = 4.44
//функция для вычисления параметра треугольника
func calcPerimeterTriangle(a: Double, b: Double, c: Double) -> Double {
    return a + b + c
}
// класс 'Triangle' для рассчета периметра
class Triangle {
    var a: Double
    var b: Double
    var c: Double
    
    init(a: Double, b: Double, c: Double) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func calcPerimeterTriangle() -> Double {
        return a + b + c
    }
}
// использование функции
let triangle = Triangle(a: a, b: b, c: c)
let perimeterViaFunction = calcPerimeterTriangle(a: a, b: b, c: c)
print("Периметр треугольника со сторонами a = \(a), b = \(b), c = \(c) равен \(perimeterViaFunction)")

/* напиши функцию, которая проверяет, является ли человек совершеннолетним на основе даты рождения и метод для класса 'Person', который проверяет: является ли человек совершеннолетним? */
let date = Date()
let currentDate = Calendar.current.dateComponents([.year, .month, .day], from: date)

func checkAdulthood(yearOfBirth: Int, monthOfBirth: Int, dayOfBirth: Int) -> Bool {
    let currentYear = currentDate.year!
    let currentMonth = currentDate.month!
    let currentDay = currentDate.day!
    
    let age = currentYear - yearOfBirth
    if age > 18 {
        return true
    } else if age == 18 {
        if currentMonth > monthOfBirth {
            return true
        } else if currentMonth == monthOfBirth {
            if currentDay >= dayOfBirth {
            return true
            }
        }
    }
    return false
}

class Person {
    var yearOfBirth: Int
    var monthOfBirth: Int
    var dayOfBirth: Int
    
    init(yearOfBirth: Int, monthOfBirth: Int, dayOfBirth: Int) {
        self.yearOfBirth = yearOfBirth
        self.monthOfBirth = monthOfBirth
        self.dayOfBirth = dayOfBirth
    }
    func isAdult() -> Bool {
        return checkAdulthood(yearOfBirth: yearOfBirth, monthOfBirth: monthOfBirth, dayOfBirth: dayOfBirth)
    }
}
// пример использования функции
let isAdult = checkAdulthood(yearOfBirth: 2000, monthOfBirth: 12, dayOfBirth: 31)
print("Совершеннолетний: \(isAdult)") // Совершеннолетний: true
// пример использования класса 'Person'
let person = Person(yearOfBirth: 2015, monthOfBirth: 12, dayOfBirth: 31)
print("Совершеннолетний: \(person.isAdult())") // Совершеннолетний: false

/*
 ЗАДАЧА: напиши функцию, которая преобразует температуру из градусов Цельсия в градусы Фаренгейта, и метод для класса 'temperatureConverter', который также преобразует температуру. */
// функция для прямого преобразования температуры

func convertCelsiusToFahrenheit(celsius: Double) -> Double {
    return (celsius * 9 / 5) + 32
}
// класс 'TemperatureConverter'
class TemperatureConverter {
    var tempCelsius: Double
    
    init(tempCelsius: Double) {
        self.tempCelsius = tempCelsius
        
    }
// метод для преобразования температуры
func convertToFahreinheit() -> Double {
    return (tempCelsius * 9 / 5) + 32
    }
}
// пример использования функции
let tempFahrenheitDirect = convertCelsiusToFahrenheit(celsius: 32.0)
print("Прямое преобразование: \(tempFahrenheitDirect)")
// пример использования класса
let tempConverter = TemperatureConverter(tempCelsius: -12.2)
let tempFahrenheitViaClass = tempConverter.convertToFahreinheit()
print("Преобразование через класс: \(tempFahrenheitViaClass)")
/*
 ЗАДАЧА: Расчет среднего значения: Создай функцию, которая рассчитывает среднее значение набора чисел, и метод для класса `StatisticsCalculator`, который также рассчитывает среднее значение. */

// функция для прямого расчета среднего значения
func calculateMean(numbers: [Double]) -> Double {
    return numbers.reduce(0, +) / Double(numbers.count)
}
// класс 'StatisticsCalculator'
class StatisticsCalculator {
    var numbers: [Double]
    
    init(numbers: [Double]) {
        self.numbers = numbers
    }
    // метод для расчета среднего значения
    func calculateMean() -> Double {
        return numbers.reduce(0, +) / Double(numbers.count)
    }
}
// пример использования функции
var numbers = [1.1, 2.2, 3.3, 4.4, 5.5]
let meanDirect = calculateMean(numbers: numbers)
print("Среднее значение (функция): \(meanDirect)")
// пример использования класса
let myStatisticCalc = StatisticsCalculator(numbers: numbers)
let meanViaClass = myStatisticCalc.calculateMean()
print("Среднее значение (класс): \(meanViaClass)")

 /*
  ЗАДАЧА: Проверка пароля: Напиши функцию, которая проверяет, соответствует ли пароль заданным критериям безопасности (например, длине и наличию цифр), и метод для класса `PasswordValidator`, который проверяет пароль на соответствие этим критериям. */
