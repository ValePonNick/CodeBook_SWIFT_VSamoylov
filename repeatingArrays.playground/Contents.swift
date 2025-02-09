import UIKit

// REPEATING ARRAYS: повторяем массивы

// Array - это массив как упорядоченная коллекция значений одного Типа => есть доступ по ИНДЕКСУ

let emptyArray: [String] = [] // объяви пустой массив

var arrayBoys: [String] = ["Bob", "Dilan", "Stuart"] // массив строк, инициализированный значениями

arrayBoys.count // метод, определи количество элементов в массиве
arrayBoys.append("Fil") //метод, добавь элемент в конец массива
arrayBoys.first // метод, доступ к первому элементу
arrayBoys.description // ???
arrayBoys + emptyArray // сложи ДВА массива
arrayBoys.contains("Sem") // метод: содержит ли элемент -> Bool
arrayBoys.removeAll()

var arrayHoundDogs: [String] = ["Basset hound", "Beagle", "Dachshund", "Irish wolfhound"]

arrayHoundDogs.hashValue // ??
arrayHoundDogs.endIndex //
arrayHoundDogs.last // доступ к последнему элементу
arrayHoundDogs.insert("Cat", at: 0) // добавь элемент по индексу
arrayHoundDogs.remove(at: 0) // удаляемый элемент из массива
arrayHoundDogs.removeAll()

var arraySportingDogs: [String] = ["Vizslo", "English cocker spaniel", "Golden retriever", "Vizslo"]

arraySportingDogs.count
arraySportingDogs.append("Vizslo")
arrayHoundDogs.sorted()
arraySportingDogs.sort()
arraySportingDogs.sort(by: <)
arraySportingDogs.sorted()
arraySportingDogs.filter {$0.count < 5 } //фильтрация массива по длине строк
arraySportingDogs.map {$0.count } // возвращает НОВЫЙ массив - длина КАЖДОЙ строки
arraySportingDogs.reduce(0) { $0 + $1.count } // суммируем элементы

let arrayChess: [String] = ["Geen", "Bishop", "Knight", "Castle", "King", "Paun"]

var bertieBottDisgustingFlavourBeans: [String] = ["Soap", "Grass", "Dirt", "Earthworm", "Earwax"]

var bertieBottDeliciousFlavourBeans: [String] = ["Marshmallow", "Tutti-Rtutti", "Banana", "Cherry", "Watermelon", "Apple"]

bertieBottDeliciousFlavourBeans.count
bertieBottDeliciousFlavourBeans.append("Limon")

var bertieBottEveryFlavourBeans = bertieBottDeliciousFlavourBeans + bertieBottDisgustingFlavourBeans
bertieBottEveryFlavourBeans.remove(at: 0)

let schoolHogwarts: [String] = ["Griffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]

let founderSchoolHogwarts: [String] = ["Salasar Slyserin", "Rowena Ravenclaw", "Helga Hufflepuff", "Godric griffindor"]

let valuesGriffindor: [String] = ["Courage", "Bravry", "Chivalry"]

let valuesHufflepuff: [String] = ["Hard work", "Patience", "Loyalty", "Fair play"]

let valuesRavenclaw: [String] = ["Intelligence", "Creatuvity", "Learning", "Wit"]

let valuesSlytherin: [String] = ["Ambition", "Cunning", "Leadership", "Resourcegulness"]

let houseColorSlytherin: [String] = ["green", "silver"]

let houseColorRavenclaw: [String] = ["blue", "bronze"]

let houseColorGriffindor: [String] = ["scarlet", "gold"]

let houseColorHufflepuff: [String] = ["yellow", "black"]

let mascotsSchoolHogwarts: [String] = ["Lion", "Barger", "Eagle", "Serpent"]

let headOfHouseHogwarts: [String] = ["Minerva Mcgonagall", "Pomona Sprout", "Filius Fitwick", "Severus Snap"]

let teamCompositionOfQuidditch: [String] = ["Chaser", "Chaser", "Chaser", "Beater", "Beater", "Keeper", "Seeker"]

let gryffindorTeamOfQuidditch: [String] = ["Oliver Wood", "Katie Bell", "alicia Spinnet", "Angelina Johnson", "Fred Weasley", "George Weasley", "Harry Potter"]

let gryffindorTeamOfQuidditch2: [String] = ["Ron Weasley", "Demelza Robins", "Ginny Weasley", "Cormac McLaggen", "Jimmy Peakes", "Ritchie Coote", "Dean Thomas"]

let slytherinTeamOfQuidditch: [String] = ["Marcus Flint", "Draco Malfoy", "Vincent Crabbe", "Pancy Parkinson", "Blaise Zabini", "Theodore Nott", "Gregory Goyle"]

var compositionOfDumbledoreArmy: [String] = ["Harry Potter", "Hermione Granger", "ron weasley", "Ginny Weasley", "Neville Longbottom", "Luna Lovegood", "Dean Thomas", "Seamus Finnigan", "Lavender Brown", "Colin Creevey"]

let compositionOrderOfPhoenix: [String] = ["Albus Dumbldor", "Hary Potter", "Hermione Granger", "Ron Weasley", "Sirius Black", "Remus Lupin", "Munerva McGonagall","Severys Snape", "Nymphadora Tonks", "Molly Weasley", "Arthur Weasley"]

var familyWeasley: [String] = ["Molly Weasley", "Arthur Weasley", "Ron Weasley","Fred Weasley", "George Weasley", "Bill Weasley", "Charlie Weasley", "Persy Weasley", "Ginny Weasley"]

let familyMalfoy: [String] = ["Draco Malfoy", "Lucius Malfoy", "Narcissa Malfoy", "scorpius Malfoy"]

var nonSportingDogs: [String] = ["French bulldog", "Poodle", "Bulldog", "Dolmatian", "French bulldog", "Poodle"]
nonSportingDogs.count
nonSportingDogs.max(by: { $0.count < $1.count })
nonSportingDogs.min()
nonSportingDogs.shuffle()

let arrayBulldogs = Array(repeating: "Bulldog", count: 5)

let mixArray: [Any] = ["Bulldog", "Tobi", 5, true]

let herdingDogs: [String] = ["Sheltie", "Collie", "Corgi", "German shepherd", "Sheltie"]

let terrierDogs: [String] = ["Russel terier", "Bull terier", "Scottish terier", "Russel terier"]

let arrayIntNumbers: [Int] = [1, 2, 3, 4, 5, 6, 7]

let arrayDoubleNumbers: [Double] = [2.12, 3.14, 4.45]

let arrayBool: [Bool] = [true, true, false, false]

let familyDursley: [String] = ["Vernon Dursley", "Petunia Dursley", "Dudley Dursley", "Marge Dursley"]

let commonPetsForHogwartStudents: [String] = ["Owls", "Cats", "Rats", "Toads", "Ferrets", "Hedgehold"]

let notableCharactersAtHogwarts: [String] = ["Albus Dumbldor", "Munerva McGonagall","Severys Snape", "Rubeus Hagrid", "Dolores Umbridge", "Filius Flitwick", "Pomona Sprout", "Sybill trellawney", "gilderoy Lockhart"]

let commonSpells: [String] = ["Expelliarmus", "Lumos", "Alohomora", "Wingardium Leviosa", "Stupefy", "Expecto Patronum", "Oblivate", "Accoi", "Protego"]
let mainCastOfActors: [String] = ["Daniel Radcliff", "Rupert Grint", "Emma Watson"]

let supportingCastOfActors: [String] = ["Richard Harris", "Michael Gambon", "Alan Rickman", "Maggie Smith", "Robbie Coltrane", "Tom Felton"] // 30 примеров массивов

let otherNotableCharacters: [String] = ["Bonnie Wright", "Matthew Lewis", "Julie Walters", "David Bradley"]

let actorsFamilyOfWeasley: [String] = ["Rupert Grin", "Bonnie Wright", "James Phelps", "Oliver Phelps", "Mark Williams", "Julie Walters"]

let actorsFamilyMalfoy: [String] = ["Tom Felton", "Jason Isaacs", "Helen McCrory", "Jamie Waylett", "Josh Herdman"]

let typesOfdragons: [String] = ["Norwegian Ridgeback", "Welsh Green", "Hungarian Horntail", "Chinese Fireball", "Swedish Short-Snout", "Herbidean Black", "Ukrainian Ironbelly"]

let filmsHarryPotter: [String] = [
"Harry Potter and the Philosopher's stone",
"Harry Potter and the Chamber of Secrets",
"Harry Potter and the Prisoner of Azkaban",
"Harry Potter and the Goblet of Fire",
"Harry Potter and the Order of Phoenix",
"Harry Potter and the Half-Blood Prince",
"Harry Potter and the Deathly Hallows. Part 1",
"Harry Potter and the Deathly Hallows. Part 2"] // 35

let namesOfElves: [String] = ["Dobby", "Winky", "Krecher", "Hokey"]

let ghostsOfHogwarts: [String] = ["nearly Headless Nick", "The Gray Lady", "The Bloody Baron", "The Fat Friar"]

let otherGhostOfHogwarts: [String] = ["Moaning Mirtle", "Professor Binns"] // 50

let ministerOfMagic: [String] = ["Cornelius Fudge", "Rufus Scrimgeour", "Kingsley Snacklebolt"]

let assistsMinisterOfMagic: [String] = ["Dolores Umbridge", "Persy Weasley"]

let repartmentsMinisteryOfMagic: [String] = ["Department of Magical Law", "Department for the Regulation and Control of Magical Creatures", "Department of International Magical Cooperation", "Department of Mysteries", "Department of Magical Transformation"]

let wizardingSchool: [String] = ["Hogwarts", "beauxbatons Academy of Magic", "Durmstrang Instirute"] // 42

let citiesVisitedHarryPotter: [String] = ["Little Whinging", "Godric's Hollow", "Hogsmeade", "London"]

let namesOfGoblins: [String] = ["Griphook", "Bogrod", "Gnash"]

let realStreetsInLondon: [String] = ["Chaing Cross Road", "Piccadily Circus", "Lambeth Bridge", "Leadenhall Market", "King's Cross Station"]

let fictionStreetsOfLondon: [String] = ["Diagon Alley", "Knockturn Alley", "Grimmauld Place"]

let shopsOfDiagonAlley: [String] = ["Ollivanders", "Florish and Blotts", "Madam Malkin's Robes for All Occasions", "Eeylops Owl Emporium", "Weasleys' wizard Wheezes", "Gringotts Wizarding Bank", "Quality Quidditch Supplies", "Magical menagerie", "Slug & Jiggers Apothecary", "Florean Fortescue's Ice Cream Parlour", "Potage's Cauldron Shop"]

let typesOfCoins: [String] = ["Galleon", "Sicle", "Knut"]

let metalOfCoints: [String] = ["Gold", "Silver", "Bronze"]

let mostImportentMagicalArtifact: [String] = ["The Philosopher's Stone", "The Invisible Cloak", "The Elder Wand", "The Resurrection Stone", "horcruxes", "The marauder's Map", "Time-Turner", "The Sword of gryffindor"] // 62 массива

var hogwarts1Course:[String] = ["Transfiguration", "Charms", "Potions", "History of Magic", "Defence Against the Dark Arts", "Astronomy", "Herbology", "Flying Lesson"]

let hogwarts1CourseInRusian = ["Трансфигурация", "Заклинания", "Зельеварение", "История магии", "Защита от темных искусств", "Астрономия", "Травология", "Полеты на метле"]

let arrayTeachersHogwarts1Course:[String] = ["professor McGonagall", "professor Flitwick", "professor Snape", "professor Binns", "professor Quirell", "professor Sinistra", "professor Sprout", "Madam Hook"]

let arrayTeachersHogwarts1CourseInRussian = ["профессор МакДональд", "профессор Флитвик", "профессор Снейп", "порфессор Бинн", "профессор Квирелл", "профессор Синистра", "профессор Спроут", "Мадам Крюк"]

let hogwarts2Course:[String] = ["Arithmancy", "Muggle Studies", "Divination", "Study of Ancien Runes", "Care of Magical Creatures"]

let hogwarts2CourseInRusian = ["Нумерология", "Магловедение", "Прорицание", "Изучение древних рун", "Уход за магическими существами"]

let arrayProfessorsDefenceFromDarkArts: [String] = ["professor Quirell", "professor Lupin", "professor Lockhart", "professor Moody", "professor Umbridge", "professor Snape"]
let arrayProfessorsDefenceDarkArtsInRuss = ["професор Квирелл", "профессор Локхарт", "профессор Люпин", "профессор Грюм", "профессор Амбридж", "профессор Снейп"] // 70

let terminsInSwift = ["variable", "constanta", "Data Type", "String", "String Literal"]

var commentVariable = ["переменная - это именованное место/контейнер в ПАМЯТИ, хранящие значение, которые могут изменяться во время выполнения программы", "var pi = 3.14159", "var alternating current = 220", "var AC = 220"]

var commentConstanta = ["постоянная - это именованное место/контейнеры в ПАМЯТИ, хранящие значение, которое НЕ м.б. изменено после установки/ИНИЦИАЛИЗАЦИИ", "let maxEnemies = 10", "в игре установлено max количество врагов одновременно - 10", "это контроль сложности игры либо ограничение ресуросов"]

var commentDataType: [Any] = ["Data Type", "тип данных",  "это классификация, определяющая ВИД значения, которое может ХРАНИТЬ let/var", "Int", "Bool", "Double", "Float", "String", "Character", "Reference Types", "Value Types", "Optional", ("abstract Types:", "Stack", "Queue", "Linked List", "Trees", "Graphs")]
print(type(of: commentDataType))

var commentString = ["String", "Строка", "это последовательность символов", "Hello, world!", "let gameText = Game Over!"]

var commentStringLiteral = ["String Literal", "Строковый литерал", "строка, ЯВНО определенная в коде с использованием двойных кавычек", "let gameOverText = 'Game Over!'"]

var collections = ["Array", "Set", "Dictionary"]

var collectComment = ["Collect", "Коллекция", "в языке Swift - это СТРУКТУРА ДАННЫХ, которая может ХРАНИТЬ и управлять группами значений"]

let mainCollectionTypes = ["Arrays", "Sets", "Dictionaries", "Tuples", "Optionals"]

var commentsArays = ["Arrays", "Массивы", "МАССИВЫ - это упорядоченные коллекции элементов ОДНОГО типа. Элементы доступны по ИНДЕКСУ и могут содержать ДУБЛИКАТЫ"]

var commentSets = ["Sets", "Множества", "МНОЖЕСТВА - это НЕупорядоченные коллекции УНИКАЛЬНЫХ элементов ОДНОГО типа. НЕ сохраняют порядок элеметов и НЕ допускают ДУБЛИКАТОВ"]

var commentDictionaries = ["Dictionary", "Словарь", "СЛОВАРИ - это НЕупорядоченные коллекции, хранящие пары 'ключ - значение', где КАЖДЫЙ ключ УНИКАЛЕН. Словари обеспечивают БЫСТРЫЙ доступ к элементам по идентификатору/ключу"]

var commentTuples = ["Tuples", "Кортежи", "Кортежи - НЕИЗМЕНЯЕМЫЕ упорядоченные НАБОРЫ значений"]

var commentOptionals = ["Optionals", "Опционалы", "ОПЦИОНАЛЫ - это значения, которые позволяют представить ОТСУТСТВИЕ значения или его присуствие"] // 84

var commentAnnotationLet = ["объявление переменных", "в Swift переменные объявляются с помощью ключевого слова 'var', а константы - 'let'", "указание имени и типа переменной или константы", "var baby: String"]

var commentDefinition = ["определение", "присвоение конкретного типа данных переменной", "var pi = 3.14159"]

var commentInitiation = ["Initialisation", "Инициализация - это присвоение начального значения переменной или константе"]

var methodsWithSets = ["insert() - добавление элемента", "remove(), removeAll(), removeIndex(), removeFirst() - удаление элемента", "contains() - проверка: присутствуел ли элемент?", "union() - объединение двух множеств", "intersection() - нахождение ОБЩИХ элементов двух множеств"]

var methodsRemoveFromSets = ["remove(), removeAll(), removeIndex(), removeFirst() - удаление элемента"]

let methodOfArray = ["append()", "это добавление нового элемента в массив", "var addNewElementToArray = hogwarts1Course.append("]// 90
hogwarts1Course.append("Care of Magical Creatures")
print(hogwarts1Course) // ["Transfiguration", "Charms", "Potions", "History of Magic", "Defence Against the Dark Arts", "Astronomy", "Herbology", "Flying Lesson", "Care of Magical Creatures"]

var methodsOfIteration = ["for-in", "enumerated()", "map", "filter", "reduce"] // для коллекций
print(collections.remove(at: 0)) // Array
print(collections) // ["Set", "Dictionary"]

var methodsOfSets = ["insert()", "используется для добавления элементов в МНОЖЕСТВО", "contains()", "используется для проверки НАЛИЧИЯ элемента в множестве"]

let numbers = [2, 4, 6, 8, 10, 12]
let sum = numbers.reduce(0, +) // 42 -? - используем оператор сложения (+) как ЗАМЫКАНИЕ
print(sum)

var words = ["Swift", "is", "a", "powerful", "languaage"]
let sentence = words.reduce("")
{ (result, word) -> String in
    return result.isEmpty ? word :
    result + " " + word
}
print(sentence)

// более КОРОТКАЯ версия с использованием ТЕРНАРНОГО оператора
var wordsOfHobbit = ["In", "a", "Hole", "in", "the", "ground", "Lived", "a", "hobbit"]
let sentenceHobbit = wordsOfHobbit.reduce("")
{ (result, word) -> String in
    return result.isEmpty ? word :
    result + " " + word
}
print(sentenceHobbit) // In a Hole in the ground Lived a hobbit

// есть массив объектов. Сгруппируй их по определенному свойству и создай СЛОВАРЬ

struct Book: CustomStringConvertible {
    
    let title: String
    let author: String
    let ISBN: String
    
    var description: String {
        return "Title: \(title), Author: \(author), ISBN: \(ISBN)"
    }
}
let books = [
    Book(title: "Hobbit", author: "Tolkien", ISBN: "978-0618260246"),
    Book(title: "Prude and Prejudice", author: "Austen", ISBN: "978-0141439518")
]
let booksByISBN = books.reduce(into: [String: Book]())
{ (result, book) in result[book.ISBN] = book
}
if let Hobbit = booksByISBN["978-0618260246"] {
    print("Title: \(Hobbit.title), Author: \(Hobbit.author)")
}
print(booksByISBN)

// ЗАДАЧА: есть массив целых чисел. Создай словарь: ключи - остатки от деления каждого числа на 3, а значениями - массивы чисел с соответствующим остатком.

let nums = [1, 2, 3, 4, 5, 6, 7]

let dictOfNums = nums.reduce(into: [Int: [Int]]())
{ (result, number) in
    let remainder = number % 3 // вычисляем остаток
    
    if result[remainder] == nil {
        result[remainder] = [number]
    } else {
        result[remainder]?.append(number)
    }
}
print(dictOfNums) // [1: [1, 4, 7], 2: [2, 5], 0: [3, 6]]

let dictNums = nums.reduce(into: [Int:
    [Int]]()) { (result, number) in
    let remainder = number % 3
    result[remainder, default: []].append(number)
}
print(dictOfNums)  // 100 Dictionaries. Finis!

