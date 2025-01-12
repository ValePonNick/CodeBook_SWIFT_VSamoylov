import UIKit

// TUPLES: ADVANCED LEVEL
// 1. создай 10 кортежей-айтишников, каждый с 4-мя параметрами: имя, возраст, опыт, специальность. НЕ задавай НИКАКИХ данных.
// объявим кортеж с явно заданнным типом
var techieLiam: (name: String, age: Int, experiencs: String, specialty: String)
var techieStive: (name: String, age: Int, experiencs: String, specialty: String)
var techieAnn: (name: String, age: Int, experiencs: String, specialty: String)
var techieJames: (name: String, age: Int, experiencs: String, specialty: String)
var techieOliver: (name: String, age: Int, experiencs: String, specialty: String)
var techieDavid: (name: String, age: Int, experiencs: String, specialty: String)
var techieLeo: (name: String, age: Int, experiencs: String, specialty: String)
var techieRobert: (name: String, age: Int, experiencs: String, specialty: String)
var techieHarry: (name: String, age: Int, experiencs: String, specialty: String)
var techieBenedict: (name: String, age: Int, experiencs: String, specialty: String)

// всем задать имя, 3-м из них - возраст (> 23), 4-м - опыт, 2-м - спец-ть
techieLiam = ("Liam", 0, "", "")
techieStive = ("Stive", 0, "", "")
techieAnn = ("Ann", 25, "", "")
techieJames = ("James", 32, "", "")
techieOliver = ("Oliver", 21, "", "")
techieDavid = ("David", 0, "middle", "")
techieLeo = ("Leo", 0, "senior", "")
techieRobert = ("Robert", 0, "junior", "")
techieHarry = ("Harry", 25, "junior", "iOS")
techieBenedict = ("Benedict", 27, "middle", "iOS")

/* 3. используя проверки if/else, выведи сообщение - логика: если возраст больше 23, есть опыт и специальность - это iOS - в консоль выведи имя и сообщение - принят на работу */
if techieLiam.age > 23 && techieLiam.experiencs != "" && techieLiam.specialty == "iOS" {
    print(techieLiam.name, "принят на работу")
} else {
    print(techieLiam.name, " не принят на работу")
}
if techieBenedict.age > 23 && techieBenedict.experiencs != "" && techieBenedict.specialty == "iOS" {
    print(techieBenedict.name, "принят на работу")
} else {
    print(techieBenedict.name, " не принят на работу")
}
if techieHarry.age > 23 && techieHarry.experiencs != "" && techieHarry.specialty == "iOS" {
    print(techieHarry.name, "принят на работу")
} else {
    print(techieHarry.name, " не принят на работу")
}
if techieJames.age > 23 && techieJames.experiencs != "" && techieJames.specialty == "iOS" {
    print(techieJames.name, "принят на работу")
} else {
    print(techieJames.name, " не принят на работу")
}
// 4. тех, кто младше 23 - добавь в массив и отсортируй. Найди в массиве max значение и удали его.
var arrayYoungTechie: [String] = []
if techieLeo.age < 23 {
    arrayYoungTechie.append(techieLeo.name)
}
if techieAnn.age < 23 {
    arrayYoungTechie.append(techieAnn.name)
}
if techieLiam.age < 23 {
    arrayYoungTechie.append(techieLiam.name)
}
if techieStive.age < 23 {
    arrayYoungTechie.append(techieStive.name)
}
if techieJames.age < 23 {
    arrayYoungTechie.append(techieJames.name)
}
if techieDavid.age < 23 {
    arrayYoungTechie.append(techieDavid.name)
}
if techieOliver.age < 23 {
    arrayYoungTechie.append(techieOliver.name)
}
if techieRobert.age < 23 {
    arrayYoungTechie.append(techieRobert.name)
}
print(arrayYoungTechie)

// выведи измененный масссив
print(arrayYoungTechie)
// Найди в массиве max значение и удали его.
// шаг 1: находим max элемент
var sortedArrayYoungTechie = arrayYoungTechie.sorted()
// шаг 2: находим ИНДЕКС max элемента
if let maxElement = sortedArrayYoungTechie.max() {
    if let index = arrayYoungTechie.firstIndex(of: maxElement) {
        // удалим max элемент
        arrayYoungTechie.remove(at: index)
    }
}
// выведи измененный масссив
print(arrayYoungTechie)

// 5. создай массив и в проверку из п.3 добавь условие: если специальность не iOS - добавить в созданный массив


// проверим! поменяла почту на github desktop... получилось!!!

