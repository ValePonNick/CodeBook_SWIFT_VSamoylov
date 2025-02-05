import UIKit

// Array - это массив как упорядоченная коллекция значений одного Типа => есть доступ по ИНДЕКСУ

let arrayChess: [String] = ["Geen", "Bishop", "Knight", "Castle", "King", "Paun"]

var bertieBottDisgustingFlavourBeans: [String] = ["Soap", "Grass", "Dirt", "Earthworm", "Earwax"]
var bertieBottDeliciousFlavourBeans: [String] = ["Marshmallow", "Tutti-Rtutti", "Banana", "Cherry", "Watermelon", "Apple"]
bertieBottDeliciousFlavourBeans.count
bertieBottDeliciousFlavourBeans.append("Limon")
var bertieBottEveryFlavourBeans = bertieBottDeliciousFlavourBeans + bertieBottDisgustingFlavourBeans
bertieBottEveryFlavourBeans.remove(at: 0)

let schoolHogwarts: [String] = ["Griffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]

let founderSchoolHogwarts: [String] = ["Salasar Slyserin", "Rowena Ravenclaw", "Helga Hufflepuff", "Godric Griffindor"]
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
var facultyHhogwarts = (headOfHouseHogwarts.description)
print(facultyHhogwarts)
let teamCompositionOfQuidditch: [String] = ["Chaser", "Chaser", "Chaser", "Beater", "Beater", "Keeper", "Seeker"]

let gryffindorTeamOfQuidditch: [String] = ["Oliver Wood", "Katie Bell", "alicia Spinnet", "Angelina Johnson", "Fred Weasley", "George Weasley", "Harry Potter"]

let gryffindorTeamOfQuidditch2: [String] = ["Ron Weasley", "Demelza Robins", "Ginny Weasley", "Cormac McLaggen", "Jimmy Peakes", "Ritchie Coote", "Dean Thomas"]

let slytherinTeamOfQuidditch: [String] = ["Marcus Flint", "Draco Malfoy", "Vincent Crabbe", "Pancy Parkinson", "Blaise Zabini", "Theodore Nott", "Gregory Goyle"]

var compositionOfDumbledoreArmy: [String] = ["Harry Potter", "Hermione Granger", "ron weasley", "Ginny Weasley", "Neville Longbottom", "Luna Lovegood", "Dean Thomas", "Seamus Finnigan", "Lavender Brown", "Colin Creevey"]

let compositionOrderOfPhoenix: [String] = ["Albus Dumbldor", "Hary Potter", "Hermione Granger", "Ron Weasley", "Sirius Black", "Remus Lupin", "Munerva McGonagall","Severys Snape", "Nymphadora Tonks", "Molly Weasley", "Arthur Weasley"]

var familyWeasley: [String] = ["Molly Weasley", "Arthur Weasley", "Ron Weasley","Fred Weasley", "George Weasley", "Bill Weasley", "Charlie Weasley", "Persy Weasley", "Ginny Weasley"]

let familyMalfoy: [String] = ["Draco Malfoy", "Lucius Malfoy", "Narcissa Malfoy", "scorpius Malfoy"]

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

let otherGhostOfHogwarts: [String] = ["Moaning Mirtle", "Professor Binns"]

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

let mostImportentMagicalArtifact: [String] = ["The Philosopher's Stone", "The Invisible Cloak", "The Elder Wand", "The Resurrection Stone", "horcruxes", "The marauder's Map", "Time-Turner", "The Sword of gryffindor"] // 50. Finis


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



