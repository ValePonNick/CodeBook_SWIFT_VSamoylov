import UIKit
// ЭССЕ FUNCTIONS: понятие, структура и виды

/*
 ФУНКЦИЯ - это:
- основополагающий элемент языка, который ОРГАНИЗУЕТ код в единый контейнер = "черный ящик" и выполняет определенные задачи
 
 ПОНЯТИЕ и НАЗНАЧЕНИЕ:
 ФУНКЦИЯ - это блок кода, который выполняет определенную задачу:
 - разбивает код на МЕЛКИЕ и УПРАВЛЯЕМЫЕ части
 - делает код МОДУЛЬНЫМ и УДОБНЫМ для тестирования и отладки
 - имеет УНИКАЛЬНОЕ имя, по которому можно ВЫЗВАТЬ ФУНКЦИЮ в нужный момент и передать АРГУМЕНТЫ
 - может принимать ВХОДЯЩИЕ ПАРАМЕТРЫ - они САМОСТОЯТЕЛЬНЫЕ ОБЪЕКТЫ!, имеют ИМЯ + ТИП
 - создает отдельную область видимости ВНУТРИ себя => все созданные в ТЕЛЕ функции методы НЕДОСТУПНЫ ИЗВНЕ
 - может ВОЗВРАЩАть значение  -> результат исполнения кода (Int, String, Array, func)
 - имеет собственный функциональный ТИП ДАННЫХ
 - м.б. сохранена в  let/var и в таком виде передана
 - внутри функции они становятся МЕТОДАМИ (область видимости локальна, ограничена ТЕЛОМ функции), они ЗАВИСИМЫ от функции
 - закончив действия, функция ПЕРЕСТАЕТ работать, а ее данные будут уничтожены и станут НЕДОСТУПНЫ
     - in, with, on - ???
- return  - возвращаемое значение после которого функция завершит РАБОТАТЬ и происходит ВЫХОД из нее, но в ОДНОЙ функции return м.б. много
- производит операции который позволяет избежать его дублирования и делает его КОРОЧЕ и ЯСНЕЕ
 
 СТРУКТУРА ФУНКЦИИ:
    - ключевое слово 'func': используй для ВЫЗОВА функции
    - имеет имя - naming - УНИКАЛЬНОЕ название, которое описывает: что делает ЭТА функция? naming важен т.к. кд д.б. ЧИТАЕМ
    - ВХОДЯЩИЕ ПАРАМЕТРЫ - значения, которые функция принимает(НЕобязательны) они САМОСТОЯТЕЛЬНЫЕ ОБЪЕКТЫ!, берутся/создаются ИЗВНЕ (ВНЕШНЯЯ зона видимости) за lim функции
    - ВОЗВРАЩАЕМЫЙ ТИП значения  -> результат (Int, String, Array, func)
    - ТЕЛО функции - это КОД, который выполняется при ВЫЗОВЕ функции (вычисления и ...?)
 
ТЕРМИНОЛОГИЯ:
- ВХОДНЫЕ ПАРАМЕТРЫ - константы, которые передаются в функцию должны иметь значения - иначе error!
- ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ: результат работы функции
- ВЛОЖЕННЫЕ ФКНКЦИИ - функции, определенные ВНУТРИ др. функций. Они могут использовать переменные внешней функции */

/* ВИДЫ ФУНКЦИЙ:

1. ПРОСТАЯ функция: НЕ принимает параметров и ничего НЕ возвращает */
func greet() {
    print("Hi, Valery!")
}
greet() // Hi, Valery!  -  для ее ВЫЗОВА просто используй ее ИМЯ

func outerFunction() {
    func innerFunction() {
        print("This is an inner function")
    }
    innerFunction()
}

/*
2. ПОЛЬЗОВАТЕЛЬСКАЯ ФУНКЦИЯ с ВХОДНЫМИ ПАРАМЕТРАМИ: создаются кодером для решения конкретных задач */
func multiplie(_ a: Double, _ b: Double) -> Double {
    return a * b
}
let multiply = multiplie(1.34, 2.45) // 3.283

/*
 3. ФУНКЦИЯ из стандартной БИБЛИОТЕКИ: встроенные функции языка Swift, которые можно использовать БЕЗ создания собственных
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

let students = [ // создай масссив словарей: каждый словарь - студент + его данные
    ["name": "John", "age": 21, "score": 98],
    ["name": "Doe", "age": 23, "score": 96],
    ["name": "Jane", "age": 20, "score": 100]
    ]
 // сортируем студентов сначала по 'age',  затем - по 'score'
let sortedStudents = students.sorted {
    // сравниваем возраст дв4х студентов
    if ($0["age"] as! Int) == ($1["age"] as! Int) {
       // если возраст одинаковый, сортируем по убыванию оценок
        return ($0["score"] as! Int) > ($1["score"] as! Int)
    }
    // если возраст разный, сортируем по возрастанию возраста
    return ($0["age"] as! Int) < ($1["age"] as! Int)
}
// выводим инфу об отсортированных студентах
for student in sortedStudents {
    // используй развертывание(!) для получения значений из словаря
    print("Student: \(student["name"]!), Age:  \(student ["age"]!), Score: \(student ["score"]!)")
}
/*  Student: Jane, Age:  20, Score: 100
    Student: John, Age:  21, Score: 98
    Student: Doe, Age:  23, Score: 96 */

// ВХОДНЫЕ ПАРАМЕТРЫ - именованные
/*
 ЗАДАЧА: создайте функцию, которая рассчитает стоимость поездки: принимает именованные параметры - distance (расстояние в км, Double), fuelConsumption(расход топлива на 100 км, Double), fuelPrice(стоимость 1 литра топлива, Double). Функция д.б. вернуть общую стоимость поездки.
 ДОП. УСЛОВИЕ: добавь доп. параметр 'passengers'(количество пассажиров, Int) и ИЗМЕНИ функцию так, чтобы она возвращала стоимость поездки на ОДНОГО человека. */

func calculateCostOfTrip(distance: Double, fuelConsumption: Double, fuelPrice: Double, passengers: Int) -> Double {
    let costOfTrip = distance / 100 * fuelConsumption * fuelPrice / Double(passengers)
    return costOfTrip
}
let costTripToKemerovo = calculateCostOfTrip(distance: 500.0, fuelConsumption: 10.0, fuelPrice: 55.0, passengers: 4)
print("Общая стоимость поездки: \(costTripToKemerovo) рублей") // Общая стоимость поездки: 687.5 рублей
