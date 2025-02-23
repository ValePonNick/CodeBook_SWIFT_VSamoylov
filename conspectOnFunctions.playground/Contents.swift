import UIKit
// ЭССЕ FUNCTIONS: понятие, структура и виды
/*
 
 ФУНКЦИЯ - это:
- основополагающий элемент языка, который ОРГАНИЗУЕТ код и выполняет определенные задачи
 ПОНЯИЕ и НАЗНАЧЕНИЕ:
 ФУНКЦИЯ - это блок кода, который выполняет определенную задачу:
 - разбивает код на МЕЛКИЕ и УПРАВЛЯЕМЫЕ части
 - делает код МОДУЛЬНЫМ и УДОБНЫМ для тестирования и отладки
 - имеет УНИКАЛЬНОЕ имя, по которому ее можно ВЫЗВАТЬ в нужный момент
 СТРУКТУРА ФУНКЦИИ:
    - ключевое слово 'func': используй для ВЫЗОВА функции
    - имеет имя - naming - УНИКАЛЬНОЕ название, которое описывает: что делает ЭТА функция? naming важен т.к. кд д.б. ЧИТАЕМ
    - ВХОДЯЩИЕ ПАРАМЕТРЫ - значения, которые функция принимает(НЕобязательны) они САМОСТОЯТЕЛЬНЫЕ ОБЪЕКТЫ!, берутся/создаются ИЗВНЕ (ВНЕШНЯЯ зона видимости) за lim функции
    - ВОЗВРАЩАЕМЫЙ ТИП значения  -> результат (Int, String, Array, func)
    - ТЕЛО функции - это КОД, который выполняется при ВЫЗОВЕ функции (вычисления и ...?)*/
// ПРОСТАЯ функция: НЕ принимает параметров и ничего НЕ возвращает
func greet() {
    print("Hi, Valery!")
}
// для ее ВЫЗОВА просто используй ее ИМЯ
greet() // Hi, Valery!
/*
ТЕРМИНОЛОГИЯ:
- ПАРАМЕТРЫ - константы, которые передаются в функцию
- ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ: результат работы функции
- ВЛОЖЕННЫЕ ФКНКЦИИ - функции, определенные ВНУТРИ др. функций. Они могут использовать переменные внешней функции */
func outerFunction() {
    func innerFunction() {
        print("This is an inner function")
    }
    innerFunction()
}
// ВИДЫ ФУНКЦИЙ:
/*
1. ПОЛЬЗОВАТЕЛЬСКИЕ функции: создаются кодером для решения конкретных задач */
func multiplie(_ a: Double, _ b: Double) -> Double {
    return a * b
}
let multiply = multiplie(1.34, 2.45) // 3.283

/*
 2. ФУНКЦИЯ из стандартной БИБЛИОТЕКИ: встроенные функции языка Swift, которые можно использовать БЕЗ создания собственных
 'sorted()' - функция сортирует МАССИВ и возвращает НОВЫЙ массив с уже отсортированными элементами */
let numbers = [3,6,1,9,10,2,12,15,21,0]
let sortedNumbers = numbers.sorted()
print(sortedNumbers)

let friuts = ["lime", "grapes", "date", "kiwi", "mango", "melon"]
let sortedFruits = friuts.sorted() // сортировка в АЛФАВИТНОМ порядке
print(sortedFruits) // date", "grapes", "kiwi", "lime", "mango", "melon"
let sortedRFruitsDescending = friuts.sorted(by: >) // сортировка в ОБРАТНОМ алфавитному порядке
print(sortedRFruitsDescending) //melon", "mango", "lime", "kiwi", "grapes", "date

// сортировка строк ПО ДЛИНЕ, используя замыкание
let words = ["Lime", "Grapes", "Date", "kiwi", "mango", "Melon"]
let sortedByLength = words.sorted { $0.count < $1.count }

print(sortedByLength) // "lime", "date", "kiwi", "mango", "melon", "grapes"
// сортировка строк с учетом РЕГИСТРА
let mixedCaseFruits = ["Lime", "Grapes", "Date", "kiwi", "mango", "Melon"]
let sortedMixedCaseFruits = mixedCaseFruits.sorted()
print(sortedMixedCaseFruits) // "Date", "Grapes", "Lime", "Melon", "kiwi", "mango"
/* COMMENTS:
 при сортировке строки сравниваются с их ASCII - кодами: ЗАглавные буквы имеют МЕНЬШИЕ коды, чем СТРОЧНЫЕ -> они расположены ПЕРВЫМИ в отсортированном массиве */

/* сортировака МАССИВА объектов по СВОЙСТВУ
Задача: есть массив ПОЛЬЗОВАТЕЛЬСКИХ объектов. Отсортируй его по конкретному свойству - возврасту */
struct Person {
    let name: String
    let age: Int
}

let people = [
    Person(name: "Bob", age: 42),
    Person(name: "Arny", age: 12),
    Person(name: "Charlie", age: 71),
    Person(name: "Alice", age: 15)
]
// сортировка по возврасту
let sortedPeopleByAge = people.sorted { $0.age > $1.age }
for person in sortedPeopleByAge {
    print("\(person.name): \(person.age)")
}
/* Charlie: 71
Bob: 42
Arny: 12 */

/* сортировка по ДВУМ критериям
 - сортируем СНАЧАЛА - по возврасту, а потом - по ИМЕНИ.
 - одна функция = одно действие,
 - иначе разбивай на две самостоятельные функции */


/*    - может принимать ВХОДЯЩИЕ ПАРАМЕТРЫ - они САМОСТОЯТЕЛЬНЫЕ ОБЪЕКТЫ!, берутся/создаются ИЗВНЕ (ВНЕШНЯЯ зона видимости) за lim функции
    - внутри функции они становятся МЕТОДАМИ (область видимости локальна, ограничена ТЕЛОМ функции), они ЗАВИСИМЫ от функции
    - может иметь ВЫХОДНОЕ ЗНАЧЕНИЕ  -> результат (Int, String, Array, func)
    - закончив действия, функция ПЕРЕСТАЕТ работать
    - in, with, on - ???
    - return  - возвращаемое значение после которого функция действовать ПЕРЕСТАЕТ, но в ОДНОЙ функции return м.б. много
 производит операции который позволяет избежать его дублирования и делает его КОРОЧЕ и ЯСНЕЕ
Функции делятся на ВИДЫ:
 1. функция БЕЗ параметров */

let sortedPeopleByAges = people.sorted {
    if $0.age > $1.age {
        return $0.name < $1.name // если возраст ОДИНАКОВ, то сортируй по ИМЕНИ
    }
    return $0.age < $1.age // сортируй по ВОЗРАСТУ
}

for person in sortedPeopleByAges {
    print("\(person.name): \(person.age)")
}
/* Alice: 15
Arny: 12
Bob: 42
Charlie: 71 */

// Сортировка строк по ДЛИНЕ и АЛФАВИТУ

let sortedWords = words.sorted {
    if $0.count == $1.count {
        return $0 < $1 // если длина одинакова, сортируем по алфавииту
    }
    return $0.count < $1.count // сортируем по длине
}
print(sortedWords) // "Date", "Lime", "kiwi", "Melon", "mango", "Grapes"

// СОРТИРОВКА СЛОВАРЕЙ по НЕСКОЛЬКИМ ключам
/* ЗАДАЧА: есть массив словарей, отсортируй его по нескольким ключам: по оценке и возрасту */

let students = [
    ["name": "John", "age": 21, "score": 98],
    ["name": "Doe", "age": 23, "score": 96],
    ["name": "Jane", "age": 20, "score": 100]
    ]
 // сортируем сначала по 'age',  затем - по 'score'
let sortedStudents = students.sorted {
    if ($0["age"] as! Int) == ($1["age"] as! Int) {
        return ($0["score"] as! Int) > ($1["Score"] as! Int) // по убыванию оценок
    }
    return ($0["age"] as! Int) < ($1["age"] as! Int) // по возрастанию возраста
}
for student in students {
    print("Student: \(student["name"]!), Age:  \(student ["age"]!), Score: \(student ["score"]!)")
}
/*  Student: John, Age:  21, Score: 98
    Student: Doe, Age:  23, Score: 96
    Student: Jane, Age:  20, Score: 100 */
