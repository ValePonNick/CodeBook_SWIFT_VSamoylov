import UIKit

var greeting = "Hello, playground"
/* TUPLES: кортежи
 
 КОРТЕЖ - это объект, ХРАНИТ значения РАЗЛИЧНЫХ типов данных в ОДНОМ оставном значении => строго упорядоченом плорядке => можно обратиться по индексу
 идеален для возврата нескольких значений из ФУНКЦИИ и м.б. объявлены как именованные, так и безымянные. */

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
(1, "alpha") < (2, "beta") // СРАВНЕНИЕ кортежей
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
print("Фильмы по книгам Дж.Роулинг о Гарри Поттере вышли в мировой прокат в \(dataMovies) годах.") // как скобки лишние убрать? // 17 кортежей
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
let qualityQuidditchSupplies = ("Shops in DiagonAlley",   "Quality Quidditch Supplies")
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
let riddikulus = ("spell", "Riddikulus", "Transforms a Boggart into somrthing humorous^ allowing it to be defeated") // 48
