import UIKit

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
 - со словарями,
 - кортежами,
 - функциями и опциональными значениями */
