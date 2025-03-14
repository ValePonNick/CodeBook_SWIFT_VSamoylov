import UIKit

// REPEATING SETS: повторяем множества

/*
МНОЖЕСТВА - это НЕупорядлченные коллекции, содержащие только УНИКАЛЬНЫЕ значения ОДНОГО типа. НЕ хранят элементы в определенном порядке и НЕ допускают дубликатов. НЕ имеют сокращенной формы записи. */

// пустое множество
var letters = Set<Character>()
print("Letters имеет тип Set с \(letters.count) элементами.") // Set of 0 Character elements

// множество с начальными значениями, используя литералы МАССИВА
var studentsID: Set = [112, 113, 114, 115]
print("Students ID: \(studentsID)") // Students ID: [114, 115, 113, 112]

// основные операции с множествами:
var numbers: Set<Int> = [1, 2, 3, 4, 5, 6, 7]
numbers.insert(12)
print(numbers) // [5, 6, 2, 3, 7, 1, 12, 4]

// удаление элемента
numbers.remove(6)
print(numbers) // [5, 2, 12, 1, 4, 3, 7]

var fruits: Set = ["apple", "banana", "limon", "cherry"]
fruits.remove("apple")
print(fruits) // ["cherry", "banana", "limon"] // 4

// методы используемые для работы с множествами:
var childs = Set<String>()
childs.insert("Ann")
childs.insert("Sam")
print(childs) // ["Ann", "Sam"]
childs.count // 1
childs.isEmpty // false
childs.contains("Bob") // false
childs.sorted() // возвращает отсортированный массив элементов множества

var students: Set = ["Mike", "Bob", "Stuart", "George", "Ann", "Sam"]
students.intersection(childs) // ["Sam", "Ann"] - возвращает ОБЩИЕ элементы для обоих множеств

students.union(childs) // возвращает ОБЪЕДИНЕНИЕ двух множество
print(students.union(childs)) // ["Bob", "Mike", "Ann", "Stuart", "George", "Sam"]

students.subtracting(childs) // возвращает РАЗНИЦУ двух множеств
print(students.subtracting(childs)) // ["Stuart", "George", "Bob", "Mike"]

let numbersSet: Set<Int> = [2, 4, 6, 8, 10, 12]
if let firstNumber = numbers.first { // возвращает ПЕРВЫЙ элемент множества
    print(firstNumber)
} else {
    print("множество пустое")
}
// COMMENTS:
/*
 ИСПОЛЬЗУЙ 'if let'
 1. этот код сначала извлекает ПЕРВЫЙ элемент множества 'numbersSet' и присваивает/сохраняет? его константе 'firstNumber'
 2. если множество НЕ ПУСТОЕ, т.е. ПЕРВЫЙ элемент существует, то код ВНУТРИ блока 'if' будет выполнен, и значение 'firstNumber' будет выведено.
 3. если множество ПУСТОЕ, то выполнится блок 'else' и выведено сообщение - "множество пустое". */

if !numbersSet.isEmpty {
    print(numbersSet.first!)
} else {
    print("множество пустое")
}
/*
 ИСПОЛЬЗУЙ свойство 'isEmpty'
 1. этот код проверяет: множество пусто? с помощью свойства 'isEmpty'
 2. если множество НЕ пустое, тто код ВНУТРИ блока 'if' будет выполнен, и первый элемент будет выведен.
 3. NB: используй оператор '!'для ПРИНУДИТЕЛЬНОГО извлечения значения из ОПЦИОНАЛА 'numbersSet.first' т.к. мы УВЕРЕНЫ, что множество НЕ ПУСТОЕ на ЭТОМ этапе.
 4. если множество ПУСТОЕ, то выполнится блок 'else' и выведено сообщение - "множество пустое". */
 // ЗАКЛЮЧЕНИЕ:
/*
 ОБА способа позволяют БЕЗОПАСНО получить первый элемент множества, предварительно убедившись, что оно НЕ ПУСТОЕ. Выбор зависит от стиля кодирования */
numbersSet.randomElement() //  6

var emptySetInt = Set<Int>() // создай ПУСТОЕ множество, которое будет хранить значения типа Int

var emptySetString = Set<String>() // создай ПУСТОЕ множество, которое будет хранить значения типа String

var emptySetDouble = Set<Double>() // создай ПУСТОЕ множество, которое будет хранить значения типа Double

var emptySetFloat = Set<Float>() // создай ПУСТОЕ множество, которое будет хранить значения типа Float

var emptySetChar = Set<Character>() // создай ПУСТОЕ множество, которое будет хранить значения типа Character


class Dog: Hashable {
    
   var name: String
   var breed: String
    
    init(name:String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    static func == (lhs: Dog, rhs: Dog) -> Bool {
        return lhs.name == rhs.name && lhs.breed == rhs.breed
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(breed)
    }
}
let myDog = Dog(name: "Shania", breed: "Caucasion Shepherd Dog")
let mumDog = Dog(name: "Buddy", breed: "english setter")
let uncleDog = Dog(name: "Rex", breed: "Boxer dog")

var dogSet: Set<Dog> = [myDog, mumDog, uncleDog]
print("Количество собак в множестве: \(dogSet.count)")

struct Cat: Hashable {
    
   var name: String
   var age: Int
    
    init(name:String, age: Int) {
        self.name = name
        self.age = age
    }
    
    static func == (lhs: Cat, rhs: Cat) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }
}
let myCat = Cat(name: "Sha", age: 3)
let mumCat = Cat(name: "Pussi", age: 5)
let uncleCat = Cat(name: "Ho", age: 1)

var catSet: Set<Cat> = [myCat, mumCat, uncleCat]
print("Количество кошек в множестве: \(catSet.count)") // 14 множеств

let names: Set = ["Ann", "Bob", "Tom", "Timmi"]
let actors: Set = ["Tom Cruse", "Adam Sendler", "Mett Deymon"]
let action: Set = ["Extraction", "Die Hard", "Commando"]
let comedies: Set = ["Red Notice", "Central Intelligence", "Wingwomen"]
let crimeDrama: Set = ["Riders of justice", "Cherry", "leon"]
let copMovies: Set = ["K-9", "Tango & Cash", "Bad Boys"]
let animared: Set = ["Shrek", "sinderella", "Toy story"]
let adventure: Set = ["Triple Frontier", "Back to the Future"]
let crimeTriller: Set = ["Joker", "Knives Out", "Furious"]
let detectivies: Set = ["The Hound of the Baskervilles", "Murder on the Orient Express", "Death on the Nil", "The ABC Murder"]
let documentary: Set = ["All That Breathes", "Blue Planet", "Born to the Wild", "Oceans"]
let drama: Set = ["The Godfather", "Marriage Story", "The Sound of Metal", "The Lion King"]
let fantasy: Set = ["Harry Potter", "Highlander", "Lord of the Rings"]
let gangsterFilms: Set = ["Pulp Fiction", "The Irishman", "Snatch", "The Italian Job"]
let musical: Set = ["Chicago", "La La Lend"]
let horror: Set = ["Dark Shadow", "The Shining"]
let romance: Set = ["The Notebook", "THE Lake House", "An officer and a Genleman"]
let scienceFiction: Set = ["Star Wars", "Startreck", "Avatar", "Blade Runner", "Marsianin"]
let triller: Set = ["The Silence of the Lambs, The Sixth Sense", "The Da Vinci Code", "Ghost"]
let war: Set = ["War of the Worlds", "Shindler's List", "Life is Deautiful", "Braveheart"]
let western: Set = ["The Good, the Bad and the Ugly", "Mackenna's Gold", "The Hateful Eight"]
let kids: Set = ["Home Alone", "Treasure Island", "The Jungle Book", "Cruella", "The Lion King"]
let melodrama: Set = ["Titanic", "Pride and Prejudence", "Emma"]
let chars: Set = ["a", "b", "c", "d", "e"]
let char: Set = ["A", "B", "C", "D", "E"]
let charRussian: Set = ["Ц", "Ч", "Й", "Ш", "Я"]

let charRuss: Set = ["ц", "й", "ч", "и", "р", "з"]
let numDouble: Set = [3.14, 2.12, 0.3, 4.44, 8.888, 7.765]
let numFloat: Set = [3.14159, 2.121212, 4.12345, 7.54432, 8.8888889]
let bools: Set = [true, false]
let operation: Set = ["a = b", "a - b", "a * c", "a / b", "a % b"]

let letts: Set = ["альфа", "бета", "гамма", "дельта"]
let notes: Set = ["do", "re", "mi", "fa", "sol", "la", "si"]
let nite: Set = ["C", "D", "E", "F", "G", "A", "B"]
let musicalTerms: Set = ["note", "melody", "harmony", "rhythm", "meter", "pitch", "musical tone"]
let genres: Set = ["jazz", "rock", "pop", "folk", "R&B"] // 50 множеств

let musicalStyles: Set = ["folk", "spiritual", "popular", "academic music"]
let performanceMethods: Set = ["vocal", "instrumental", "vocal-instrumental"]
let musicalContext: Set = ["secular", "sacred"]
let musicalCompositionsVocal: Set = ["songs", "arias", "arioso", "vocalises"]
let musicalCompositionInstrumental: Set = ["sonatas", "symphonies", "concertos"]

let musicalDance: Set = ["minuet", "sarabande", "polonaise", "waltz", "polka"]
let musucalForms: Set = ["mass", "legend", "piece", "opera", "cassation", "prelude"]
let musicalDefinition: Set = ["arioso", "ballad", "Cantata", "nocturne", "romance", "serenade", "symphony", "sonata"]
let operaForms: Set = ["Aria", "Rechitative", "Vocal Ensemble", "Choruses", "Orchestral Pieces"]
let musicleName: Set = ["Cats", "The Phantom of the Opera", "Les Miserables", "Evita"] // 60 множеств

// ЗАДАЧА: создай из одних и тех же элементов массив, кортеж, словарь и множество с фруктами. Как можно преобразовать их друг в друга

// ARRAY - массив
let fruitsArray = ["apple", "banana","orange", "limon", "apple", "orange", "kivi", "kivi", "kivi", "kivi", "apple", "apple"] // это массив строк
fruitsArray.count // 12
print("Массив фруктов: \(fruitsArray)") // Массив: ["apple", "banana", "orange", "limon", "apple", "orange", "kivi", "kivi", "kivi", "kivi", "apple", "apple"]

// DICTIONARY - словарь
let
var fruitsDictionary = ["apple": 4, "banana": 1, "orange": 2, "limon": 1, "kivi": 4]
fruitsDictionary.count // 5
fruitsDictionary.keys // ["banana", "limon", "apple", "kivi", "orange"]
print(fruitsDictionary.keys)
fruitsDictionary.values //
print(fruitsDictionary.values) // [1, 4, 4, 1, 2]
print(fruitsDictionary) // ["banana": 1, "limon": 1, "apple": 4, "orange": 2, "kivi": 4]

// SET - множество
let fruitsSet: Set<String> = Set(fruitsArray) // создай МНОЖЕСТВО для хранения только УНИКАЛЬНЫХ элементов uniquie fruits = uniqueFruits
print(fruitsSet) // ["apple", "limon", "kivi", "orange", "banana"]
