import UIKit
// ТЕМА: Tuple, Dictionary, Function
// ЗАДАЧА: статистика отметок
// Создай структуру 'Course' - название и массив студентов. Напиши функцию, которая вернет средний балл по курсу.
struct Course {
    let courseName: String
    let students: [Student]
}
struct Student {
    let name: String
    let marks: [Int]
}
func averageAllMarks(for course: Course) -> Double {
    // собираем ВСЕ оценки в один МАССИВ
    let allMarks = course.students.flatMap { $0.marks }
    
    // вычисляем средний балл
    let total = allMarks.reduce(0, +)
    return allMarks.isEmpty ? 0 : Double(total) / Double(allMarks.count) // проверка деления на ноль
}
// пример использхования
let stu1 = Student(name: "Joe", marks: [3,4,3,2,3])
let stu2 = Student(name: "Ann", marks: [5,4,3,4,5])
let stu3 = Student(name: "Alex", marks: [5,4,3,5,5])

let course = Course(courseName: "IT", students: [stu1, stu2, stu3])
let average = averageAllMarks(for: course)
print("Average mark for \(course.courseName): \(average)")
/*
 COMMENTS:
 1. sruct Course содержит МАССИВ студентов типа 'Student' - это позволяет ХРАНИТЬ и использовать инфу о студентах
 2. функция 'averageAllMarks' принимает курс и собирает ВСЕ оценки в один МАССИВ с помощью 'flatMap', а затем вычисляет средний балл
 3. добавлена проверка деления на ноль - в случае отсутствия оценок */

//  Задача 2: Словарь студентов
/*
 Создай словарь, где ключ - имя студента, а значение — кортеж, содержащий возраст и массив оценок. Напиши функцию, которая принимает имя студента и возвращает его возраст и средний балл. */
let students: [String: (age: Int, grades: [Double])] = [
    "Amily": (age: 21, grades: [12.6, 21.21, 44.55, 68.86]),
    "Sam": (age: 20, grades: [32.6, 11.21, 94.5, 48.6]),
    "Arnold": (age: 22, grades: [42.6, 71.1, 24.52, 58.8]),
]
func avrgStu(for name: String) -> (age: Int?, avrgGrade: Double?) {
    // проверь: наличие студента в СЛОВАРЕ
    guard let stuInfo = students[name] else {
            print("Студент НЕ НАЙДЕН")
        return (nil, nil)
    }
    // собираем ВСЕ оценки в один МАССИВ
    let allGrades = stuInfo.grades
    // вычисляем средний балл
    let total = allGrades.reduce(0, +)
    let average = allGrades.isEmpty ? 0 : Double(total) / Double(allGrades.count)
    
    return(stuInfo.age, average)
}
// пример использования
let result = avrgStu(for: "Tom")
if let age = result.age, let avgGrade = result.avrgGrade {
    print("Возраст студента: \(age), Средний балл: \(avgGrade)")
} else {
    print("Инфа о студенте НЕ НАЙДЕНА")
}
// COMMETS:
/*
 1. объявление словаря:
    - создай константу 'students'
    - ключи СЛОВАРЯ - строки(имена студентов)
    - значение СЛОВАРЯ - это КОРТЕЖ с 2-мя элементами: возраст + массив оценок
 2. ИНИЦИАЛИЗАЦИЯ:
    - в словарь + 3 студента с возрвстом и оценками
 3. Функция для вычисления среднего балла
    - объявление функции:
        - 'avrgStu(for name: String)' функция принимает ИМЯ студента в виде строки
    - функция возвращает КООРТЕЖ '(age: Int?, avrgGrade: Double?)' где 'It?' + 'Double?' - это опциональные значения(м.б. nil, если студент НЕ НАЙДЕН)
 4. Проверь наличие студента - используй 'guard'
    - проверь наличие студента по имени
    - если студент НЕ найден('studentname' возвращает nil
    - выводим сообщение и возвращаем ('nil, nil')
 5. Собираем ВСЕ оценки
    - извлекаем оценки студента из кортежа 'stuInfo'
 6. Вычисление среднего балла:
    - суммируем оценки
        - используй метод 'reduce', чтобы сложить все оценки в МАССИВ
        - начальное значение - 0, операция сложения +
 7. Вычисление среднего:
    - если массив пуст 'allGrades.isEmpty' - то возвращаем 0
    - иначе: делим сумму на КОЛИЧЕСТВО оценок
 8. Возврат значений - КОРТЕЖ(возраст + средний балл)
 9. Пример использования функции:
    - вызываем функцию для получения инфы о студенте по имени 'Tom'
    - используй УСЛОВНУЮ ПРИВЯЗКУ 'if let' для БЕЗОПАСНОГО извлечения значений из возвращаемого КОРТЕЖА
    - если инфа найдена, выводим ее, если нет - сообщение об ОШИБКЕ
 ЗАКЛЮЧЕНИЕ: этот код - основы работы :
 - со словарями и кортежами, функциями и опциональными значениями */

// ЗАДАЧА 3: Фильтрация выдающихся программистов
// Используя МАССИВ СТРУКТУР 'famousIT' напиши функцию, которая возвращает МАССИВ программистов старше определенного возраста

struct FamousIT {
    let name: String
    let yearOfBirth: Int
}
// создай МАССИВ СТРУКТУР и инициализируй его значениями
var allFamousIT: [FamousIT] = [
    FamousIT(name: "Steve Jobs", yearOfBirth: 1955),
    FamousIT(name: "Jeff Bezos", yearOfBirth: 1964),
    FamousIT(name: "Bill Gates", yearOfBirth: 1955),
    FamousIT(name: "Mertha Lane Fox", yearOfBirth: 1973)
]
// пример использования
for person in allFamousIT {
    print("\(person.name) was born in \(person.yearOfBirth)")
}
// функция принимат год и возвращает МАССИВ имен тех IT, кто родился ДО этого года
@MainActor func findFamousIT(bornBefore year: Int) -> [String] {
    // ЛОГИКА функции
    var result: [String] = [] // создай ПУСТОЙ МАССИВ для результатов
    for person in allFamousIT {
        if person.yearOfBirth < year {
            result.append(person.name)
        }
    }
    return result
}
// пример использования
let famousITBornBefore1960 = findFamousIT(bornBefore: 1960)
print("Известные IT-специалисты, родившиеся до 1960 года: \(famousITBornBefore1960)")

// ЗАДАЧА 4: Поиск пиратов по количеству кораблей
/*
 Создай массив структур 'Pirate', который содержит инфу о пиратах. Напиши функцию, которая принимает min количество кораблей и возвращает массив пиратов, у которых среднее количество кораблей выше указанного значения */
struct Pirate {
    let name: String
    let frase: String
    let numberOfShips: [Int]
}
// создай МАССИВ СТРУКТУР и инициализируй его значениями
let pirates: [Pirate] = [
    Pirate(name: "Richard Grenville", frase: "Cor blimey", numberOfShips: [1, 2, 3, 1]),
    Pirate(name: "Henry Morgan", frase: "Yo-ho-ho", numberOfShips: [12, 12, 12]),
    Pirate(name: "Francis Drake", frase: "All hand on deck", numberOfShips: [7, 7, 7]),
    Pirate(name: "William Kidd", frase: "Shiver my timbers", numberOfShips: [1, 2, 2])
]
// создай функцию для фильтрации пиратов по среднему количеству кораблей
func newArrayPirates(for minAverageShips: Int) -> [Pirate] {
    // фильтруем пиратов по среднему количеству судов
    return pirates.filter { pirate in
        let totalShips = pirate.numberOfShips.reduce(0, +) // суммируем количество судов
        let average = Double(totalShips) / Double(pirate.numberOfShips.count) // вычисляем среднее
        return average > Double(minAverageShips) // проверяем условие
    }
}
// пример использования кода
let filteredPirates = newArrayPirates(for: 5)
print("Пираты со средним количеством судов больше 5: ")
for pirate in pirates {
    let averageShips = pirate.numberOfShips.reduce(0, +) / pirate.numberOfShips.count
    print("\(pirate.name) со средней численностью судов \(averageShips)")
}
/*
 Объяснение кода
     1.    Структура `Pirate`:
     •    Содержит имя (`name`), фразу (`frase`) и массив количества кораблей (`numberOfShips`).
     2.    Создание массива `pirates`:
     •    Инициализируется массив с несколькими пиратами и их данными.
     3.    Функция `newArrayPirates`:
     •    Принимает минимальное среднее количество кораблей (`minAverageShips`).
     •    Использует метод `.filter`, чтобы отобрать пиратов с средним количеством кораблей выше указанного значения.
     •    Для каждого пирата вычисляется общее количество кораблей и среднее значение.
     4.    Вывод результатов:
     •    После вызова функции выводятся имена отфильтрованных пиратов и их среднее количество кораблей.
 Пример вывода
 
 Альтернативный вариант задачи
 Если ты хочешь сделать задачу ещё более интересной, можно добавить дополнительные параметры для фильтрации:
     •    Пираты с максимальным количеством судов.
     •    Пираты с определенной фразой.
     •    Пираты с определенным диапазоном количества судов.
 */
  // Задача 4.1 Пираты с определенной фразой.
// создай функцию для фильтрации пиратов по фразе
func choosePirate(for frase: String, from pirares: [Pirate]) -> [Pirate] {
    // фильтруем пиратов по фразе
    let filteredPirates = pirares.filter { pirate in
        pirate.frase.contains(frase)
    }
    // выводим инфу о найденных пиратах
    for pirate in filteredPirates {
        print("\(pirate.name) известен следующей фразой: \(pirate.frase)")
    }
    return filteredPirates
}
// пример использования
// выводит инфу о пиратах, чьи фразы содержат слово 'ho-h0'
let resultFrase = choosePirate(for: "ho-ho", from: pirates)

// 4.3  Пираты с максимальным количеством судов.
struct Corsar {
    let name: String
    let numberOfShips: [Int]
}
    
func maxShipsCorsar(from corsars: [Corsar]) -> [Corsar] {
    // находим max количество судов среди всех пиратов
    guard let maxShips = corsars.map({ $0.numberOfShips.reduce(0, +) }).max() else {
        return [] // возвращаем пустой массив, если пиратов нет
    }
    // фильтруем пиратов с max количеством судов
    return corsars.filter { corsar in
        corsar.numberOfShips.reduce(0,+) == maxShips
    }
}
// пример использования кода
let corsars = [
    Corsar(name: "R. Grenville", numberOfShips: [1, 2, 3, 1]),
    Corsar(name: "H. Morgan", numberOfShips: [12, 12, 12]),
    Corsar(name: "F. Drake", numberOfShips: [7, 7, 7]),
    Corsar(name: "W. Kidd", numberOfShips: [1, 2, 2])
]

let powerfulCorsars = maxShipsCorsar(from: corsars)
print("Корсары с наибольшим количеством судов: ")
for corsar in powerfulCorsars {
    print("\(corsar.name) с количеством судов: \(corsar.numberOfShips)")
}
// НО если свойство 'numberOfShips' - это ЦЕЛОЕ ЧИСЛО - код такой
struct Captain {
    let name: String
    let numberOfShips: Int // количество судов у капитана
}
    
func maxShipsCaptain(from captains: [Captain]) -> [Captain] {
    // находим max количество судов среди всех пиратов
    guard let maxShips = captains.map({ $0.numberOfShips }).max() else {
        return [] // возвращаем пустой массив, если пиратов нет
    }
    // фильтруем пиратов с max количеством судов
    return captains.filter { captain in
        captain.numberOfShips == maxShips
    }
}
// пример использования кода
let captains = [
    Captain(name: "R. Grenville", numberOfShips: 5),
    Captain(name: "H. Morgan", numberOfShips: 12),
    Captain(name: "F. Drake", numberOfShips: 7),
    Captain(name: "W. Kidd", numberOfShips: 21)
]

let powerfulCaptains = maxShipsCaptain(from: captains)
print("Капитаны с наибольшим количеством судов: ")
for сaptain in powerfulCaptains {
    print("Капитан \(сaptain.name) с количеством судов: \(сaptain.numberOfShips)")
}
//  Задача 4.4 Пираты с определенным диапазоном количества судов.
