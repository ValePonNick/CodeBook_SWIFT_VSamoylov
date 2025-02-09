import UIKit

// DICTIONARY: словари
/*
СЛОВАРЬ - это НЕупорядоченная коллекция элементов, для доступа к ним - КЛЮЧИ.
    - Каждый элемент = пара: 'ключ + значение'.
    - НО ключ  - НЕ авто.сгенерированный индекс(как в МАССИВАХ) - это УНИКАЛЬНОЕ значение ПРОИЗВОЛЬНОГО/ НО хэшируемого! типа(чаще: Int, String).
    - Все ключи д.б. ОДНОГО типа данных. Равно как и все значения.
 
 ИДЕЯ СЛОВАРЯ: используй уникальные / пользовательские ключи для доступа к значениям. */

let dictionaryLetters: [String: String] = ["a": "alfa", "b": "beta", "g": "gamma", "d": "delta"]
print(dictionaryLetters)

/* СИНТАКСИС:
[ключ_1: значение_1, ключ_2: значение_2, ключ_3: значение_3] // - это ЛИТЕРАЛ словаря */
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
let mixDict: [String: Any] = ["Ron Weasley": 11, "pi": 3.14, "isValid": true]
print(mixDict) // ["isValid": true, "pi": 3.14, "Ron Weasley": 11]

let mixDictNumbers: [String: Any] = ["целое число": 21, "число с плавающей точкой": 3.1414, "булево значение": false]

let mixDictInt: [Int: Any] = [12: "дюжина", 888: 8.888, 21: "очко"]

let mixDictDouble: [Double: String] = [3.14: "pi", 3.14159: "pi", 3.141: "pi"]

let mixDictBool: [String: Bool] = ["yes": true, "no": false]

let mixDictBools: [Bool: String] = [true: "It's cold outside", false: "It's warm outside"]

let mixDictPassword: [Bool: String] = [true: "Password is correct", false: "Password is incorrect"]

struct Door {
    var isLocked: Bool
    var isOpen: Bool
    mutating func open(isLocked: Bool) {
        
        if isLocked {
            self.isLocked = false
        }
        isOpen = true
    }
    mutating func close() {
        isOpen = false
    }
    mutating func lock() {
        isLocked = true
    }
    mutating func unlock() {
        isLocked = false
    }
}
// создаем СЛОВАРЬ ДВЕРЕЙ, где КЛЮЧ: название комнаты, а ЗНАЧЕНИЕ - экземпляр структуры Door
var doors: [String: Door] = [
    "Main Entrance": Door(isLocked: true, isOpen: false),
    "Bedroom": Door(isLocked: false, isOpen: false),
    "Bathroom": Door(isLocked: true, isOpen: true) // для разнообразия пусть дверь в ВАННУЮ будет ОТКРЫТА и ЗАПЕРТА
]
// пример использования СЛОВАРЯ и функций структуры Door
// получаем ВХОДНУЮ ДВЕРЬ главной комнаты
if var mainEntranceDoor = doors["Main Entrance"] {
    print("Main Entrance door is locked: \(mainEntranceDoor.isLocked), and open: \(mainEntranceDoor.isOpen)")
    
// открываем дверь
    mainEntranceDoor.open(isLocked: true)
print("Opening Main Entrance Door...")
    
// обновляем значение в словаре
doors["Main Entrance"] = mainEntranceDoor
    print("Maim Entrance door is now locked; \(doors["Main Entrance"]!.isLocked), and open: \(doors["Main Entrance"]! .isOpen)")
          } else {
        print("Main Entrance door not found.")
    }
// пример работы с дверью в спальне
if var bedroomDoor = doors["Bedroom"] {
    print("Bedroom door is locked: \(bedroomDoor.isLocked), and open: \(bedroomDoor.isOpen)")
    
    // закрываем дверь
    bedroomDoor.close()
    print("Closing Bedroom door...")
    doors["Bedroom"] = bedroomDoor
    
    // Блокируем дверь
    bedroomDoor.lock()
    print("Locking Bedroom door...")
    doors["Bedroom"] = bedroomDoor
    print("Bedroom is now locked: \(doors["Bedroom"]!.isLocked), and open: \(doors["Bedroom"]!.isOpen)")
    } else {
        print("Bedroom door is not found.")
}
// пример с ванной комнатой
if var bathroomDoor = doors["BathroomDoor"] {
    print("Bathroom Door is locked: \(bathroomDoor.isLocked), and open: \(bathroomDoor.isOpen)")
// разблокируем дверь
    bathroomDoor.unlock()
    print("Unlocking Bathroom door...")
    doors["Bathroom"] = bathroomDoor
    print("Bathroom Door is now locked: \(doors["Bathroom"]!.isLocked), and open: \(doors["Bathroom"]!.isOpen)")
} else {
    print("Bathroom door is not found.")
}
/* COMMENTS:
1. СТРУКТУРА 'Door' определяет:
    - СВОЙСТВА двери ('isLocked', 'isOpen')
    - МЕТОДЫ для изменения ее состояния ('open', 'close', 'lock', 'unlock')
2. СЛОВАРЬ 'Doors', где
    - КЮЧИ - это название комнат
    - значения - это ЭКЗЕМПЛЯРЫ структуры 'Door'
3. ПРИМЕР ИСПОЛЬЗОВАНИЯ:
    - проверь: существует ли дверь с определенным КЛЮЧОМ в словаре
    - если дверь НАЙДЕНА -> получаем ее ЭКЗЕМПЛЯР
    - выполняем операции с дверью (открой, закрой, заблокируй)
    - обновляем ЗНАЧЕНИЕ в словаре, чтобы СОХРАНИТЬ изменения состояния двери
4. ОЧЕНЬ ВАЖНО!
    - использование 'if var' для ИЗМЕНЕНИЯ значения из словаря чтобы изменить СТРУКТУРУ, полученную из словаря, а затем обновить словрь НОВЫМ ЗНАЧЕНИЕМ.
    - в SWIFT структуры - это value types т.е. "типы значений" => при извлечении структуры из словаря получаем ЕЕ КОПИЮ!
 ЗАКЛЮЧЕНИЕ:
 это отличный пример использования СЛОВАЯ для
    - ХРАНЕНИЯ данных о нескольких дверях
    - УПРАВЛЕНИЯ их состоянием посредством Bool + методов 'struct Door'  */

let dict1 = ["A": 1, "B": 2, "C": 3]

let dict2: [String: String] = ["A": "a", "B": "b", "C": "c"]

let dict3 = [("Sam", "Hobbit"), ("Pin", "Hobbit"), ("Thorin", "Dwarth")]

let dict4: Dictionary<Int,Int> = [12: 21, 31: 13, 41: 14] // 50 Dictionaries

let dictionaryBool: [String: Bool] = ["isEmpty": true, "isn'tEmpty": false]
                             
let dictionaryInt: [Int: Bool] = [12: true, 13: false]

let dictDouble: [Double: Int] = [3.14: 3, 3.14159: 3]

let dictCity = ["Rom": "Italy", "Paris": "France", "London": "UK"]

let dictPlanets = [1: "Earth", 2: "Mars", 3: "Venus", 4: "Mercury"]

let dictKings = ["George I": "XVIII century", "George II": "XVIII century", "George III": "XVIII century", "Anna": "XVIII century"]

let englishLawyers = ["Lawyer": "criminal law", "jurist": "Judge", "attorney": "USA", "solicitor": "UK"]

let branchOfCivilLaw = ["Civil Law": 1, "Real Estate Law": 2, "Family Law": 3]

let branchOfPublicLaw = ["Military Law": 1, "Administrative Law": 2, "Criminal Law": 3]

let dictTermins = ["Tax": 1, "Contract": 2, "Patent": 3, "Notary": 4]

let legalPhrases = ["The spirit of the law": true, "The letter of the law": true, "Open and shut case": true]

let legalFictionPerson = ["John Doe": "one party in a lawsuit", "Richard Roe": "second party in a lawsuit"]

let legalFictionInEnglish = ["Corporate Personhood": "legal person", "Electronic Signatures": "equivalent to handwritten signatures"]

let dictCoordLatitude: [Double: String] = [51.30334: "Big Ben, London", 48.512954: "Eiffel Tower, Paris", 33.512424: "Sydney Opera House, Australia"]

let dictCoordLongitude: [Double: String] = [0.72872: "Big Ben, London", 2.173969: "Eiffel Tower, Paris", 151.125417: "Sydney Opera House, Australia"] // 65 examples Dict

let dictAlphabet: [String: Character] = ["Anna": "a", "Bob": "b", "Cara": "c", "Dilan": "d"]

let dictNumbers: [Int: String] = [1: "one", 2: "two", 3: "three", 4: "four", 5: "five"]

let dict: [Int: Double] = [12: 12.12, 11: 11.111, 10: 10.0000, 9: 9.99999]

let di: [Int: Any] = [ 12: "дюжина", 0: "ноль", -12: "отрицательное число", 3: 3.14, 22: false]

let dictionary = [1: "in", 2: "the", 3: "Hole", 4: "lived", 5: "a", 6: "Hobbit"]

let dictArrays = [(1, 12.12), (2, 2112), (3, 3.14), (4, 444)] // это словарь массивов

let dictionar = ["когда моряк на берегу": "Agata Cristy", "когда я на почте служил ямщиком": "Agata Cristy"] // 72 примера словарей

let dictLP = [1981: "Laura Pergolizzi", 2015: "Lost on You"]

let textLostOnYou1 = [1.1: "When you get older, planer, saner", 1.2: "Когда ты станешь старше, роще, разумнее"]

let textLostOnYou2 = [2.1: "Will you remember allbthe danger we came from?", 2.2: "Будешь ли помнить о той опасности, что породила нас?"]

let textLostOnYou3 = [3.1: "Burning like embers, failing, tender", 3.2: "Тлея, словно угольки, медленно угасающие,"]

let textLostOnYou4 = [4.1: "WLonging for the days of no surrender", 4.2: "Тоскуем по дням непокорности,"]

let textLostOnYou5 = [5.1: "Years ago", 5.2: "Годы спустя..."]

let textLostOnYou6 = [6.1: "And well you know", 6.2: "И ... ты знаешь"]

let textLostOnYou7 = [7.1: "Smoke em if you got em cause it's going down", 7.2: "Кури, если тебе есть чем, ведь все идет под откос"] // 80 dictionaries

let textLostOnYou8 = [8.1: "All I ever wanted was you", 8.2: "Все, что мне было нужно - это ты,"]

let textLostOnYou9 = [9.1: "I'll never get to heaven cause I don;t now how", 9.2: "Я никогда не попаду в рай, потому что не знаю как"]

let textLostOnYou10 = [10.1: "Let;s raise a glass", 10.2: "Давай поднимем бокал"]

let textLostOnYou11 = [11.1: "Or two", 11.2: "Или два"]

let textLostOnYou12 = [12.1: "To all the things I've lost on you", 12.2: "За все, что я потеряла из-за тебя."]

let textLostOnYou13 = [13.1: "Oh", 13.2: "О-о,"]

let textLostOnYou14 = [14.1: "Tell me are hey lost on you", 14.2: "Скажи, это-то до тебя дошло?"]

let textLostOnYou15 = [15.1: "Oh", 15.2: "О-о,"]

let textLostOnYou16 = [16.1: "Just that you could cut me loose", 16.2: "Ты же могла подарить мне свободу."]

let textLostOnYou17 = [17.1: "Oh", 17.2: "О-о,"] // 90 dictionaries

let textLostOnYou18 = [18.1: "After eveything I've lost on you", 18.2: "После всего, что я потеряла из-за тебя."]

let textLostOnYou19 = [19.1: "Is that lost on you", 19.2: "Неужели ты это не осознала?"]

let textLostOnYou20 = [20.1: "Oh", 20.2: "О-о,"]

let textLostOnYou21 = [21.1: "Baby is that lost on you", 21.2: "Детка, неужели ты это не осознала?"]

let textLostOnYou22 = [22.1: "Is that lost on you", 22.2: "Неужели ты это не осознала?"]

let textLostOnYou23 = [23.1: "Wishin' I could see the machinations", 23.2: "Хотелось бы мне замечать манипуляции,"]

let textLostOnYou24 = [24.1: "Understand the toil of extectations in your mind", 24.2: "Изнурительность ожиданий в твоей голове."]

let textLostOnYou25 = [25.1: "Hold me like you never lost your patience", 25.2: "Обними меня как, словно ты никогда не теряла терпения,"]  // That;s ALL! 100 dictionaries

let textLostOnYou26 = [26.1: "Tell me that you love me more than hate me all the time", 26.2: "Скажи мне, что любишь меня больше, чем ненавидишь постоянно."]
let textLostOnYou27 = [28.1: "And you're still mine", 28.2: "И ты все еще моя."] // That;s ALL! 100 dictionaries






