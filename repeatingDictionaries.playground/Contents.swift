import UIKit

// DICTIONARY: словари
/*
СЛОВАРЬ - это НЕупорядоченная коллекция элементов, для доступа к ним - ключи.
    - Каждый элемент = пара: 'ключ + значение'.
    - НО ключ  - НЕ авто.сгенерированный индекс(как в МАССИВАХ) - это УНИКАЛЬНОЕ значение ПРОИЗВОЛЬНОГО/ НО хэшируемого! типа(чаще: Int, String).
    - Все ключи д.б. ОДНОГО типа данных. Равно как и все значения.
 
 ИДЕЯ СЛОВАРЯ: используй уникальные / пользовательские ключи для доступа к значениям. */

let dictionaryLetters: [String: String] = ["a": "alfa", "b": "beta", "g": "gamma", "d": "delta"]
print(dictionaryLetters)

/* СИНТАКСИС:
[ключ_1: зеачение_1, ключ_2: зеачение_2, ключ_3: зеачение_3] // - это ЛИТЕРАЛ словаря */
[200: "success", 300: "warning", 400: "error"] // создание словаря с помощью ЛИТЕРАЛА словаря
let dictLetters = [1: "alfa", 2: "beta", 3: "gamma", 4: "delta"] // ключи: 1, 2, 3, 4 - они позволяют получить ДОСТУП к значениям словаря
dictLetters.keys   // Dictionary.Keys([4, 1, 2, 3])
dictLetters.values //Dictionary.Values(["alfa", "gamma", "delta", "beta"])

// создай словарь -> функция Dictionary(dictionaryLiteral) - принимает СПИСОК КОРТЕЖЕЙ, каждый из которых определяет пару "ключ - значение"
/* СИНТАКСИС:
 Dictionary(dictionaryLiteral): (ключ_1: зеачение_1), (ключ_2: зеачение_2), (ключ_3: зеачение_3))

 КОММЕНТАРИЙ:
    - эта функция возвращает СЛОВАРЬ  из N элементов.
    - КОРТЕЖИ (ключ: зеачение) передаются списком как значения ВХОДНОГО ПАРАМЕТРА dictionaryLiteral. */
Dictionary(dictionaryLiteral: (12, "дюжина"), (0, "зеро"), (13, "чертова дюжина"))

// Создай словарь -> функция Dictionary(uniqueKeysWithValues:) - на основе коллекции/массива однотипных кортежей
let baseCollection = [("troll", "Bert"), ("hobbit", "Frodo"), ("elf", "Legolas"), ("dwarth", "Gimli")] // базовая клооекция КОРТЕЖЕЙ
let newDictionary = Dictionary(uniqueKeysWithValues: baseCollection)
newDictionary // ["elf": "Legolas", "hobbit": "Frodo", "troll": "Bert", "dwarth": "Gimli"]
/*
 КОММЕНТАРИЙ:
    - в функции Dictionary(uniqueKeysWithValues:) использован входной параметр uniqueKeysWithValues:,
    - которому передается коллекция пар значений
    - в итоговом СЛОВАРЕ: ключи - это первый элемент каждого кортежа, а значения - это ВТОРОЙ элемент каждого кортежа
    - ПОЛЬЗА: нужен СЛОВАРЬ на основе ДВУХ произвольных по=>ей.
    - можем создать из них ОДНУ по=>ть пар "ключ-значение" с помощью функции zip(_:_:) и передать ее в функцию Dictionary(uniqueKeysWithValues:) */

let starNames = ["Proxima Centauri", "Alpha Centauri A", "Alpha Centauri B"] // массив звезд
let starDistances = [4.24, 4.37, 4.37] // массив расстояний до звезд
let starDistanceDict = Dictionary(uniqueKeysWithValues: zip(starNames, starDistances))
starDistanceDict // ["Proxima Centauri": 4.24, "Alpha Centauri A": 4.37, "Alpha Centauri B": 4.37]
/*
 КОММЕНТАРИЙ: используется НЕ ЧАСТО!
    - функция zip(_:_:) возвращает по=>ть пар значений, основанную на двух базовых по=>тях:
    - берет очередное значение КАЖДОЙ по=>ти, объединяет их в кортеж и добавляет в итоговую по=>ть как элемент
    - эта сформированная по=>ть передается аргументу uniqueKeysWithValues
    - итоговый СЛОВАРЬ:  ключи = значения первой базовой коллекции, значения = элементы ВТОРОЙ базовой коллекции. */
 
/* ТИП данных СЛОВАРЯ
Dictionary<T1, T2> // полная форма записи
[T1: T2] // краткая форма записи */
let codeDesc = [200: "succeess", 300: "warning", 400: "error"]
type(of: codeDesc) // Dictionary<Int, String>.Type // словарь [Int:String] тип данных задан НЕЯВНО на основе переданного ему ЗНАЧЕНИЯ
// ТИП СЛОВАРЯ м.б. задан ЯВНО - укажи его через : после имени параметра
/*
 СИНТАКСИС:
 let имяСловаря: Dictionary<T1, T2> = литерал словаря // полная форма записи
 let имяСловаря: [T1: T2] = литерал словаря // краткая форма записи */
let dictOne: Dictionary<Int, Bool> = [100: false, 200: true, 400: true]
let dictTwo: [String: String] = ["John": "Snow", "Bob": "White"]

/* Взаимодействие с ЭЛЕМЕНТАМИ словаря
    - доступ к элементам словаря - через УНИКАЛЬНЫЕ ключи
    - ключи - НЕ только для получения ЗНАЧЕНИЙ словаря, НО и для их ИЗМЕНЕНИЯ */
var countryDict = ["USA": "США", "UK": "Великобритания", "UAE": "ОАЭ"]
var countryName = countryDict["Соединенное Королевство"] // получаем значение элемента
countryDict["UAE"] = "Объединенные Арабские Эмираты"
print(countryDict) // ["USA": "США", "UK": "Великобритания", "UAE": "Объединенные Арабские Эмираты"]
// словарь countryDict получил НОВОЕ значение для элемента с КЛЮЧОМ "UAE"

/*
 изменение значения ЭЛЕМЕНТА словаря - с помощью метода updateValue(_:forKey:) ->
    - если изменяемый элемент ОТСУТСТВУЕТ -> возвращается nil
    - в случае успешного изменения -> возвращается СТАРОЕ значение элемента */
var oldValueOne = countryDict.updateValue("Объединенные Арабские Эмираты", forKey: "UAE") // в переменной записано СТАРОЕ измененное значение элемента
oldValueOne //
var oldValueTwo = countryDict.updateValue("Эстония", forKey: "Est") // nil
oldValueTwo // nil - ? - т.к. элемента с таким КЛЮЧОМ НЕ СУЩЕСТВУЕТ
// для ИЗМЕНЕНИЯ значения в метод .updateValue передается НОВОЕ значение элемента и ПАРАМЕТР forKey: = он содержит КЛЮЧ изменяемого элемента

// КАК СОЗДАТЬ НОВЫЙ элемент в СЛОВАРЕ? обратись к НЕсуществующему элементу и передай нму ЗНАЧЕНИЕ
countryDict["Turk"] = "Турция"
countryDict // ["Turk": "Турция", "USA": "США", "UAE": "Объединенные Арабские Эмираты", "UK": "Великобритания", "Est": "Эстония"]

// КАК УДАЛИТЬ элемент(пару "ключ-значение"? -> присвоить ему nil или метод removeValue(forKey:), указав КЛЮЧ элемента
countryDict["UAE"] = nil
countryDict.removeValue(forKey: "UK")
countryDict // ["Est": "Эстония", "Turk": "Турция", "USA": "США"]
/*
COMMENTS:
 1. используя метод removeValue(forKey:) мы ВОЗВРАЩАЕМ значение удаляемого элемента
 2. СЕКРЕТ: если попробовать получить доступ к НЕсуществ. элементу словаря, это НЕ приведет к ОШИБКЕ -> SWIFT вернет nil - ???
 3. это значит, что ЛЮБОЕ возвращаемое словарем значение - ОПЦИОНАЛ */
let someDict = [1: "Harry Potter", 3: "Ron Weasley"]
someDict[2] // nil
type(of: someDict[2]) //  Optional<String>.Typ>

// ПУСТОЙ СЛОВАРЬ

let emptyDict: [String: Int] = [:]
let anotherEmptyDict = Dictionary<String, Int>()
var someDicti = [1: "Harry Potter", 3: "Ron Weasley"]
someDicti = [:] // с помощью [:] можно УНИЧТОЖИТЬ ВСЕ элементы словаря
print(someDicti) // [:]

// Базовые СВОЙСТВА и МЕТОДЫ словарей

someDict.count //2 возвращает количество элементов в словаре
emptyDict.isEmpty // true
someDict.keys // получить ВСЕ ключи СПЕЦИАЛЬНОГО ТИПА данных  -> Dictionary<Int, String>.Keys
someDict.values // получить ВСЕ значения  - и это КОЛЛЕКЦИИ, которые можно преобразовать в массив / множество
let keys = someDict.keys
let keysSet = Set(keys) // [1, 3]
print(keysSet)
let values = someDict.values
let valuesArray = Array(values) // ["Ron Weasley", "Harry Potter"]
print(valuesArray)

// ВЛОЖЕННЫЕ ТИПЫ
/*
 типы данных Keys/Values реализованы ВНУТРИ словаря и НЕ СУЩЕСТВУЮТ отдельно от словаря =>
    - НЕ МОЖЕМ создать параметр типа Keys/Values (напр.: var a: Values = ...) - ??? - такого ГЛОБАЛЬНОГО ТИПА НЕТ
    - эти значения НИКОГДА НЕ ПОНАДОБЯТСЯ отдельно от РОДИТЕЛЬСКОГО словаря
    - возвращать весь массив - бесцельная трата ПАМЯТИ
    - можно получить значения типа Dictionary<T1, T2>.Keys / Dictionary<T1, T2>.Values
    - и преобразовать в ИНОЙ вид коллекции / перебрать его элементы
ИТАК: свойства keys / values ВОЗВРАЩАЮТ коллекции элементов, которые МОЖНО преобразовать в Array / Set

ЗНАЧЕНИЕ:
    1. Словари используются для ХРАНЕНИЯ переменного множеств одноТИПных значений с кастомными ИНДЕКСАМИ.
    2. ПОРЯДОК добавления элементов НЕ СОХРАНЯЕТСЯ
 */

let dictCharacters = ["troll": "Bert", "hobbit": "Frodo", "elf": "Legolas", "dwarth": "Gimli"]
print(dictCharacters)

let dicti: [Int: String] = [:]

let dictio = [
    "a": "alfa",
    "b": "beta",
    "g": "gamma",
    "d": "delta"
]
var diction = [
    1: "Tom",
    2: "Bill",
    3: "Bert"
]
let dictiona = [
    "troll": "Bert",
    "hobbit": "Frodo",
    "elf": "Legolas",
    "dwarth": "Gimli"
]
let arithmeticProgression = [1: 1, 2: 4, 3: 7, 4: 10, 5: 13]

let geometryProgression = [ 1: 1, 2: 2, 3: 4, 4: 8, 5: 16, 6: 32]

let islandsNorthernHemisphereOfAtlanticOcean = [
    "Group of nine vulcan islands": "Azores",
    "Popular islends: beach and resorts": "Canary Islands",
    "Mountainous island": "Madera",
    "subtropical islands": "Bermuda",
    "Archipelago, popular for tourism": "Bagamas"
]
let islandsSouthernHemisphereOfAtlanticOcean = [
    "Volcanical island": "Ascension Island",
    "Historical significance": "Saint Helena",
    "most inhabited archipelago in word": "Tristan da Cunha"
    ]
let deepesrPointofOceans = [
    "Pasific Ocean": 11.000,
    "Atlantic Ocean": 8.742,
    "Indian Ocean": 7.729,
    "Arctic Ocean": 5.5,
    "Southeren Ocean": 8.264
]
let historicBays = [
    "Canada": "Charleur Bay",
    "USA": "Delavware Bay",
    "Portugal": "Bays of the Tagus and Sado Rivers"
]
let riversOfSibiria = [
    "Repablic of Sakha(Yakutia)": "Lena",
    "Krasnoyyarsk region": "Enisey",
    "Irkutsk region": "Angara"
]
var bestWorks = [
    "Hamlet": 1601,
    "Harry Potter and the Philosopher's Stone": 1997,
    "Prude and Prejudice": 1813
]
let englishWriters = [
    "W.Shakespeare":  "Hamlet",
    "C.Dickens": "Great Expecations",
    "A.Christy": "Murder on the Orient express",
    "O.wild": "The Picture of Dorian Gray"
]
let englishChildrenWriters = [
    "Lewis Carroll": "Alice's Adventures in Wonderland",
    "Beatrix Potter": "The tale of Peter Rabbit",
    "C.S.Lewis": "The Lion, the Witch and the Wardrobe"
]
let namberNamesOfLotto = [
    21: "очко",
    12: "дюжина",
    11: "барабанные палочки",
    2: "гуси-лебеди",
    61: "Гагарин",
    90: "дед"
] // Результат: 38
