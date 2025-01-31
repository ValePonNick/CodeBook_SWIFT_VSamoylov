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

// ЗАДАЧА 3. Создай систему управления библиотекой книг

struct Book {
    let title: String
    let author: String
    let year: Int
    let genre: String
}
enum BookError: Error {
    case bookNotFound
}

class Library {
    var books:[Book] = [] // пустое хранилище - МАССИВ всех книг
    
    func addBook(book: Book) { // метод, он добавляет книгу в МАССИВ книг по названию
        books.append(book)
        print("Книга \(book.title) добавлена в библиотеку")
    }
    
    func removeBook(byTitle title: String) {
        if let index = books.firstIndex(where: { $0.title.lowercased() == title.lowercased() }) {
            let removeBook = books.remove(at: index)
            print("Книга \(removeBook.title) удалена из библиотеки")
        } else {
            print("Книга с названием \(title) не найдена")
        }
    }
    
   // метод для поиска книг по названию
func findBook(title: String) throws -> Book? {
    if let book = books.first(where: { $0.title.lowercased() == title.lowercased() }) {
            return book
        } else {
            throw BookError.bookNotFound
        }
    }
}
// пример использования
let library = Library()
// добавь книгу в библиотеку
library.addBook(book: Book(title: "1984", author: "G.Orwell", year: 1949, genre: "Dystopian"))
library.addBook(book: Book(title: "Hobbit", author: "J.R.R.tolkien", year: 1934, genre: "Fantasy"))
// ищем книгу по названию
do {
    if let foundBook = try library.findBook(title: "1984") {
        print("Вы можете взять книгу \(foundBook.title)")
    } else {
        print("Книга не найдена")
    }
} catch BookError.bookNotFound {
    print("Книга не доступна или не найдена")
} catch {
    print("Произошла неизвестная ошибка")
}
// удаляем книгу по названию
library.removeBook(byTitle: "1984")
// осилила!
