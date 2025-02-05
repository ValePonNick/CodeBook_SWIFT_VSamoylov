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
