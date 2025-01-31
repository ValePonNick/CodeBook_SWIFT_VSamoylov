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
