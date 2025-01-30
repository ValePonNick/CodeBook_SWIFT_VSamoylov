import UIKit

// ЗАДАЧА: создай систему планирования путешествия на авто.
// структура как представление авто
struct Car {
    let make: String
    let model: String
    let year: Int
    let mileage: Int
}
// структура как представление поездки
struct Trip {
    let car: Car
    let destination: String
    let distance: Int
    let duration: String
}
// класс для планирования путешествий
class TravelManager {
    var trips: [Trip] = [] // массив для ХРАНЕНИЯ ВСЕХ поездок
    
    // метод для добавления НОВОЙ поездки
    func addTrip(trip: Trip) {
        trips.append(trip)
    }
    // метод для вывода ВСЕХ запланированных поездок
    func printTrips() {
        for trip in trips { // проходим по всем поездкам в массиве
            print("Авто: марка - \(trip.car.make), модель авто - \(trip.car.model), год выпуска - \(trip.car.year), пробег - \(trip.car.mileage), место назначения - \(trip.destination), расстояние - \(trip.distance), подолжительность поездки - \(trip.duration) часов")
        }
    }
}
// пример использования
let travelManager = TravelManager() // создаем экземпляр класса
// создай два авто
let myCar = Car(make: "Toyota", model: "Rav-4", year: 2015, mileage: 168000) // создаем объект myCar
let mumCar = Car(make: "Toyota", model: "Rav-4", year: 2014, mileage: 84500) // // создаем объект mumCar
// добавь поездки в енеджер путешествий
let myTrip = Trip(car: myCar, destination: "Кемерово", distance: 500, duration: "пять часов") // создаем объект myTrip
let mumTrip = Trip(car: mumCar, destination: "Бийск", distance: 1000, duration: "десять часов") // создаем объект mumTrip
// добавь поездки в менеджер путешествий
travelManager.addTrip(trip: myTrip) // жобавляем myTrip в travelManager
travelManager.addTrip(trip: mumTrip)
// печать всех запланированных поездок
travelManager.printTrips()
/* COMMENTS:
1. класс 'TravelManager'
    - управляемт ВСЕМИ запланированными поездками.
    - содержит МАССИВ 'trips', который хранит объекты типа 'Trip'
2. метод 'addTrip' -
    - принимает объект типа 'Trip'и добавляет его в МАССИВ 'trips'
    - метод массива 'append' добавляет элемент в КОНЕЦ МАССИВА
ЗАКЛЮЧЕНИЕ:
 этот код демонстрирует понимание основ Swift, включая структуры и классы. Он организован и легко читаем. */
