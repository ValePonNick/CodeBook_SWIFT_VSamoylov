import UIKit

// Sintax and Logics: Collection in SWIFT

/* TUPLES: кортежи
 
 КОРТЕЖ - это объект,самый ПРОСТОЙ СПОСОБ:
    - ХРАНИТСЯ В let/var также как и значения фундамент. типов данных
    - содержит значения РАЗЛИЧНЫХ типов данных в ОДНОМ составном значении
    -> строго упорядоченый порядок => можно обратиться по индексу
    - идеален для возврата нескольких значений из ФУНКЦИИ
    - кортежи м.б. объявлены как именованные, так и безымянные.
    - MAX 7 -> иначе используй struct, class, enum
 СИНТАКСИС:
 let имя константы = (значение_1, значение_2, значение_3)
 объявляем let/var и инициализируем ей литерал кортежа, состоящего из N элементов в качестве ЗНАЧЕНИЯ */
let myProgramStatus = (500, "In Work", true)
/*
 ТИП КОРТЕЖА - фиксированная упоряжоченная по=>ть имен типов данных элементов кортежа */

let floatStatus: (Float, String, Bool) = (500, "In Work", true) // объяви кортеж с ЯВНО ЗАДАННЫМ типом
print(floatStatus)
var (statusCode, statusText, statusConnect) = myProgramStatus // записываем ЗНАЧЕНИЯ кортежа в переменные
// выводим инфу
print("Код ответа - \(statusCode)")
print("Текст ответа - \(statusText)")
print("Связь с сервером - \(statusConnect)")

var(myName, myAge) = ("Добби", 127) // инициализируем значение НЕСКОЛЬКИМ параметрам: в ПРАВОЙ части выражения ПОСЛЕ оператора инициализации -> передаем литерал кортежа
print("Мое имя \(myName) и мне \(myAge) лет.")
// var myName, myGroup инициализированы соотв. значениями элементов КОРТЕЖА("Добби", 127)
let(statusCodes, _, _) = myProgramStatus
// доступ к элементам кортежа через ИНДЕКСЫ
print("Мое имя - \(myProgramStatus.0)")
print("Мое имя - \(myProgramStatus.1)")
print("Мое имя - \(myProgramStatus.2)")

// доступ к элементам кортежа через ИМЕНА - УДОБНО + НАГЛЯДНО
let statusTuple = (statusCode: 150, statusText: "Non Work", statusConnect: false)

// выводи инфу, используй ИНДЕКСЫ
print("Код ответа - \(statusTuple.0)")
print("Текст ответа - \(statusTuple.1)")
print("Связь с сервером - \(statusTuple.2)")
let anotherStatusTuple: (statusCode: Int, statusText: String, statusConnect: Bool) = (789, "Non Work", false)
anotherStatusTuple.statusConnect // Связь с сервером - false

// редактирование КОРТЕЖА - инициализация значения ОДНОГО кортежа -> в ДРУГОЙ
var myFirstTuple:(Double, String) = (3.14, "pi") // тип данных задан ЯВНО
var mySecondTuple = (2.71828, "число Эйлера")
myFirstTuple = mySecondTuple // тип данных задан через ИНИЦИАЛИЗИРУЕМОЕ ЗНАЧЕНИЕ
print(myFirstTuple)
var myThirdTuple = (1.61803, "золотое сечение")
myFirstTuple = myThirdTuple // тип данных задан через ИНИЦИАЛИЗИРУЕМОЕ ЗНАЧЕНИЕ
print(myFirstTuple)

// изменяй значения отдельных элементов, используя индексы и имена
var someTuple = ("Troll", "Bert") // объявляем кортеж
someTuple.1 = "Harry Potter" // изменяем значение отдельного элемента
someTuple.0 = "Goblin"
print(someTuple)

/* сравнение кортежей: сначала срааним первые элементы ОБОИХ кортежей -> если они идентичны, то сравниваем следующую пару - ДО тех пор, пока не обнаружатся НЕидентичные элементы */
(1, "Tom") < (2, "Bert") // true
(1, "Tom") < (3, "Bill") // true т.к. ВСЕ соотв. элементы ИДЕНТИЧНЫ
(3, "Bill") < (2, "Bert") // false т.к. элементы НЕидентичны


let tupleGaleon = ("Galeon", "gold", 1, "Sicle", "silver", 17, "Knut", "bronze", 493) // НЕименованный кортеж
tupleGaleon.8 // доступ к элементу по индексу

let oneGaleon = (name: "Galeon", metal: "gold", count: 1) // именованный кортеж
let oneSicle = (name: "Sicle", metal: "silver", count: 1)
let oneKnut = ((name: "Knut", metal: "bronze", count: 1))
print(type(of: oneKnut)) // у КОРТЕЖА НЕТ своего типа
oneKnut.metal
print("Один галеон равен 17 \(oneSicle.name) или 493 \(oneKnut.name)")

let sicle: (String, String,Int) = ("Sicle", "Silver", 1) // кортеж с ЯВНО заданным типом
print(sicle.1) // индексы в кортежах МОЖНО задействовать ВСЕГДА
print(sicle.0)

var(person, name) = ("домашний эльф", "Добби") // объявляем переменные и иницилизируем их значения
print("я - \(person), мое имя \(name)")
name = "Кикимер"
print("я - \(person), мое имя \(name)")

// СРАВНЕНИЕ кортежей
(1, "alpha") < (2, "beta")
(5, "alpha") < (3, "gamma")
(3.14, "pi") == (3.14, "pi") // элементы идентичны

var sevenHorcruxes: [String] = ["Tom Riddle's Diary", "Marvolo Gaunt's Ring", "Salasar Slytherin's Locket", "Helga Hufflepuff's Cup", "Rowena Rawenclaw's Diadem", "Nagini"]
sevenHorcruxes.count
sevenHorcruxes.append("Harry Potter")
print(sevenHorcruxes)

let moviesAndReleaseDates = (
    "Harry Potter and the Philosopher's stone", "16 november", 2001,
    "Harry Potter and the Chamber of Secrets", "15 november", 2002,
    "Harry Potter and the Prisoner of Azkaban", "4 june", 2004,
    "Harry Potter and the Goblet of Fire", "18 november", 2005,
    "Harry Potter and the Order of Phoenix", "11 july", 2007,
    "Harry Potter and the Half-Blood Prince", "15 july", 2009,
    "Harry Potter and the Deathly Hallows. Part 1", "19 november", 2010,
    "Harry Potter and the Deathly Hallows. Part 2", "15 july", 2011
)
let booksAndReleaseDates = (
    "Harry Potter and the Philosopher's stone", "30 june", 1997,
    "Harry Potter and the Chamber of Secrets", "2 july", 1998,
    "Harry Potter and the Prisoner of Azkaban", "8 july", 1999,
    "Harry Potter and the Goblet of Fire", "8 july", 2000,
    "Harry Potter and the Order of Phoenix", "21 june", 2003,
    "Harry Potter and the Half-Blood Prince", "16 july", 2005,
    "Harry Potter and the Deathly Hallows", "21 july", 2007
)
let elfDobby = ("elf", "Dobby", "male")
let elfKrecher = ("elf", "Кикимер", "male")
let elfWinky = ("elf", "Winky", "female")
let schoolGryffindor = (name: "Gryffindor", colors: "scarlet", "gold", mascots: "Lion")
var griffindor = (schoolGryffindor.name, schoolGryffindor.1, elfDobby.1)
print(griffindor)

var elves = (elfDobby.1, elfWinky.1, elfKrecher.1) // удобно!!!
print(elves)

var booksDate = (booksAndReleaseDates.0, booksAndReleaseDates.2)
print(booksDate)
booksDate = (booksAndReleaseDates.3, booksAndReleaseDates.5)
print(booksDate)
booksDate = (booksAndReleaseDates.12, booksAndReleaseDates.14) // работает шарманка!
print(booksDate)

let dataMovies = (booksAndReleaseDates.2, booksAndReleaseDates.5,booksAndReleaseDates.8,booksAndReleaseDates.11,booksAndReleaseDates.14, booksAndReleaseDates.17)
print("Фильмы по книгам Дж.Роулинг о Гарри Поттере вышли в мировой прокат в \(dataMovies) годах.") // как скобки лишние убрать? 

// Tuple representing a character and their house
let harryPotter = ("Harry Poter", "Griffindor", "student")
let ronWeasley = ("Ron Weasley", "Griffindor", "student")
let dracoMalfoy = ("Draco Malfoy", "Slitherin", "student")
let hermioneGranger = ("Hermione Granger", "Griffindor", "student")
let georgeWeasley = ("George Weasley", "Griffindor", "student")
let fredWeasley = ("Fred Weasley", "Griffindor", "student")
//
let philosopherStone = ("MagicalArtifact", "The Philosopher's Stone")
let invisibleCloak = ("MagicalArtifact", "The Invisible Cloak")
let elderWand = ("MagicalArtifact", "The Elder Wand")
let resurrectionStone = ("MagicalArtifact", "The Resurrection Stone")
let horcruxes = ("MagicalArtifact", "Horcruxes")
let marauderMap = ("MagicalArtifact", "The Marauder's Map")
let timeTurner = ("MagicalArtifact", "Time-Turner")
let swordOfGryffindor = ("MagicalArtifact", "The Sword of gryffindor")

// Tuple representing a magical creature and its description
let ollivanders = ("Shops in DiagonAlley", "Ollivanders")
let florishAndBlotts = ("Shops in DiagonAlley", "Florish and Blotts")
let madamMalkinRobes = ("Shops in DiagonAlley","Madam Malkin's Robes for All Occasions")
let eeylopsOwlEmporium = ("Shops in DiagonAlley", "Eeylops Owl Emporium")
let weasleyWizardWheezes = ("Shops in DiagonAlley",  "Weasleys' wizard Wheezes")
let gringottsBank = ("Shops in DiagonAlley", "Gringotts Wizarding Bank")
let qualityQuidditchSupplies = ("Shops in DiagonAlley", "Quality Quidditch Supplies")
//
var agePorter = (name: "Harry Potter", age: 11, status: "wizard")
var magicalCreatures = ("elves", "gragons", "dementors", "goblins", "thedtrals", "centaur")
type(of: magicalCreatures)

// Tuple representing a spell and its effect
let expeliarmus = ("spell", "Expeliarmus", "Disarms of opponent")
let lumos = ("spell", "Lumos", "Produses light from the wand")
let stupefy = ("spell", "Stupefy", "Stuns the target, rendering them unconscious temporarily")
let accio = ("spell", "Accio", "Summons objects to the caster, regardless of distance")
let protego = ("spell", "Protego", "Creates a magical shield that deflects spells and physical entities")
let riddikulus = ("spell", "Riddikulus", "Transforms a Boggart into somrthing humorous^ allowing it to be defeated") // 56 finis

// Tuple representing planets

let planetEarthInfo = (name: "Earth", distance: 149.6, hasLife: true)
var planetMarsInfo = (name: "Mars", distance: 228.0, hasLife: false)
let planetVenusInfo = (name: "Venus", distance: 108.1, hasLife: false)
let planetMercuryInfo = (name: "Mercury", distance: 58.2, hasLife: false)
let planetJupiterInfo = (name: "Jupiter", distance: 778.1, hasLife: false)
let planetSaturnInfo = (name: "Saturn", distance: 1429.0, hasLife: false)
let planetUranusInfo = (name: "Uranus", distance: 2875.1, hasLife: false)
let planetNeptuneInfo = (name: "Neptune", distance: 4497.0, hasLife: false)
let planetPlutoInfo = (name: "Pluto", distance: 5913.1, hasLife: false) // 65
// доступ к элементам КОРТЕЖА
planetEarthInfo.distance
planetEarthInfo.hasLife
planetEarthInfo.name
print("Planet: \(planetPlutoInfo.name), Distance: \(planetPlutoInfo.distance) million km, Life: \(planetPlutoInfo.hasLife).")
// Изменение элементов кортежа
planetMarsInfo.hasLife = true
print("Planet: \(planetMarsInfo.name), Life: \(planetMarsInfo.hasLife).")

var tupleAddress = ("London", "UK", "Earth")
var(city, couttry, planet) = tupleAddress
print(planet)

var tupleLondon = (city: "London", people: 8776535, data: 43)
var tupleLids = (city: "Lids", people: 536321, data: 1086)
let tupleOxford = (city: "Oxford", people: 170798, data: 912)
let tupleKembridge = (city: "Kembridge", people: 152725, data: 901)
let tupleYork = (city: "York", people: 275599, data: 71)
let tupleDerby = (city: "Derby", people: 170798, data: 600)
let tupleSauthgempton = (city: "OSauthgempton", people: 249604, data: 43)
let tupleSanderland = (city: "Sanderland", people: 168277, data: 674)
let tupleMidlsboro = (city: "Midlsboro", people: 148219, data: 1830)
let tupleExeter = (city: "Exeter", people: 126156, data: 1050)

// КОРТЕЖ РЕКИ МИРА
let tupleNil = (name: "Nil", length: 6670, drainage: 3349000, pool: "Mediterranean Sea")
let tupleAmazon = (name: "Amazon", length: 7100, drainage: 6915000, pool: "Athlantic Ocean")
let tupleHuangHe = (name: "Huang He", length: 5500, drainage: 745000, pool: "Boxai Bay")
let tupleYenisei = (name: "Yenisei", length: 4100, drainage: 258000, pool: "Kara Sea")
let tupleYukon = (name: "Yukon", length: 3200, drainage: 85000, pool: "Bering Sea")
let tupleDunai = (name: "Dunai", length: 2850, drainage: 817000, pool: "Black Sea") // 83
// доступ к элементам кортежа через имен
tupleNil.name // Nil
tupleYukon.length // 3200
tupleDunai.3 // "Black Sea"
tupleAmazon.3 //"Athlantic Ocean"
print("Самые известные реки мира: \(tupleNil.name), \(tupleAmazon.name)")

// создать программу, открывающую дверь в Гриффиндор
// массив паролей
let password = ["Caput Draconis", "Pure blood", "Fortuna Major", "Fairy Lights", "Pig snout", "Mimbulus Mimbletonia"]
// создать КОРТЕЖ, открывающий дверь в Гриффиндор
var openDoorGriffindor = (house: "Griffindor", doorGuard: "Fat Ledy", password: "Mimbulus Mimbletonia")
var openDoorSlytherin = (house: "Slytherin", doorGuard: "Blood Baron", password: "Pure blood")

let tupleSingAC = (autor: "Глеб Самойлов", team: "Agata Cristy", text: "Сказочная тайга", "облака в небо спрятались...")

let tupleSingsAC = (autor: "Вадим Самойлов", team: "Agata Cristy", name: "Viva, Calman!", text: "Пегой луной наступает вечер...")

let tupleBeatles = ("Ringo Starr", 4, "Liverpool", "ливерпульская четверка", "Beatles")

let tupleLP = ("Laura Pergolizzi", "LP", 43, "Hantington", "USA", "Lost on You", "Проиграла, поставив на тебя")

let tupleLauraP = ("LP", "Lost on You", 2016, "When you get older, plainer, saner...") // 91 tuples - кортеж

let tuplesongsLP = ("LP", ("Lost on You", "Other people"), ("Go to sleep", "One last time"), "Angels") // это КОРТЕЖ, где его элементы - КОРТЕЖИ!

let tupleAgataCristyAlbuoms = ("Опиум", "Ураган", "Чудеса", "Майн Кайф?", "Декаданс", "Позорная звезда", "Коварство и любовь", "Второй фронт", "Эпилог")

let pupleACAlbuom1997 = (1997, "Ураган",( "Два корабля", "Моряк", "Корвет уходит в небеса"))

let pupleACAlbuom1998 = (1998, "Чудеса", ("Ковер-вертолет", "Сны", "Вервольф", "Я вернусь", "Дорога паука"))

let pulpeACA1995 = (1995, "Опиум", ("Хали_Гали кришна", "Абордаж", "Черная луна", "Сказочная тайга", "Опиум для никого", "Насилие"))

let tupleAgataCristie = (1988, "Вадим Самойлов", "Глеб Самойлов", "Александр Козлов", "Андрей Котов")

let tupleACJanrs = ("Готик-рок", "Арт-рок", "Хфрд-рок", "Глэм-рок", "Постпанк")

let tupleFavouriteSongsAC = ("Viva, Calman!", "Как на войне", "Истерика", "Опиум для никого", "Сказочная тайга", "Черная луна", "Моряк", "Ковер-вертолет")

let tupleGSMatrixx = (2008, "Глеб Самойлоff & The Matrixx", "The Matrixx")  //100 tuples - FINIS!!!

        
  
    
   

