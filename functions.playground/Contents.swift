import UIKit

// 7. FUNCTIONS: функции

// 7.1. создать ТРИ функции
/* первая - принимает массив Int и сортирует его по порядку(возрастание). Затем распечатывает рез-т в консоль */
func sortNumbers(number: [Int]) -> [Int] {
    return number.sorted()
}
// проверим на примере:
let unsortedNums = [3, 6, 9, 1, 3, 2, 4, 12, 21,5]
type(of: unsortedNums)
let sortedNums = sortNumbers(number: unsortedNums)
type(of: sortedNums)
print(sortedNums)
/* вторая - принимает массив String, меняет 1,2 и 3 элементы и сортирует по алфавиту. Затем распечатывает рез-т в консоль */
/* NB: эта функция использует встроенный метод 'sorted()' для сортировки массива строк в лексикографическом порядке */
func sortStrings(array: [String])  -> [String] {
    return array.sorted()
}
let strings = ["apple", "banana", "kivi", "limon"]
let sortedStrings = sortStrings(array: strings)
print(sortedStrings)

/* третья - принимает ДВА масссива String и складывает их. Затем распечатывает рез-т в консоль */
func twoArrays(_: [String], _: [String]) {
    var sum = array1 + array2
    print(sum)
}
let array1 = ["one", "two", "three", "four"]
let array2 = ["apple", "limon", "cheese"]
twoArrays(_: array1, _: array2)

/*2. создать журнал для учителя, который будет принимать имя студента, профессию и оценку и записывает все это в массив. И внестите 10 студентов туда и распечатайте через цикл for - in */
// определение СТРУКТУРЫ для студента
struct Student {
    var name: String
    var age: Int
    var grade: Double
}
// функция для создания массива студентов
func creatJournal() -> [Student] {
    var students: [Student] = []
    // добавление 10 студентов в журнал
    students.append(Student(name: "Иванов", age: 21, grade: 4.5))
    students.append(Student(name: "Петров", age: 20, grade: 4.7))
    students.append(Student(name: "Сидоров", age: 21, grade: 4.9))
    students.append(Student(name: "Катцын", age: 22, grade: 4.3))
    students.append(Student(name: "Рева", age: 22, grade: 4.8))
    students.append(Student(name: "Титов", age: 20, grade: 5.0))
    students.append(Student(name: "Смирнов", age: 23, grade: 4.1))
    students.append(Student(name: "Хохлов", age: 20, grade: 4.3))
    students.append(Student(name: "Чудов", age: 19, grade: 4.0))
    students.append(Student(name: "Шмидт", age: 24, grade: 4.9))
    return students // возвращает массив студентов
}
// функция для вывода информации о студентах
func printStudentsJournal(students:[Student]) {
    for student in students {
        print("Имя: \(student.name), Возраст: \(student.age), Оценка: \(student.grade)")
    }
}
// основной код
let studentsJournal = creatJournal() // создание журнала
printStudentsJournal(students: studentsJournal) // вывод инфы о студентах на консоль


/* 3. создать функцию, которая принимает имя и фамилию, потом положить это в массив и вывести рез-т в консоль */

/* 4. создай функцию, которая принимает парам етры и вычисляет площадь круга */

/* создайте Dictionary с именем ученика, где ключ: name и score, а значение - ( 1 tuple из 5 имен и второй тюпл - из 5 оценок. Распечатай только имена по ключу. */
