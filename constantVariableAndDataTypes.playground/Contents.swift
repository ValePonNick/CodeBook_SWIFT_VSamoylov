import UIKit

// 1. КОНСТАНТЫ, ПЕРЕМЕННЫЕ и ТИПЫ ДАННЫХ
// вывести min/max значения чисел

func minMax (array:[Int]) -> (min: Int, max: Int)? {
    guard !array.isEmpty else { return nil }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1...] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return(currentMin, currentMax)
}
// пример использования:
if let bounds = minMax(array: [8, -2, 12, 36, 44, -21]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}
/* 2. доработаем код:
 добавим поиск СРЕДНЕГО ЗНАЧЕНИЯ и КОЛИЧЕСТВА элементов в массиве */

func averageCount(of array:[Int]) -> Int? {
    guard !array.isEmpty else { return nil }
    
    let sum = array.reduce(0, +)
    let average = sum/Int(array.count)
    let count = array.count
    
    return average
}
// пример использования
let numbers = [8, -2, 12, 36, 44, -21]
let count = numbers.count
if let avg = averageCount(of: numbers) {
    print("среднее значение:  \(avg), количество элементов в массиве:  \(count)")
} else {
    print("массив пуст")
}
/* COMMENTS:
1. объявим функцию с именем minMax ()
2. функция принимает один параметр: МАССИВ целых чисел - array:[Int]
3. функция возвращает КОРТЕЖ с ДВУМЯ значениями - min/max, который м.б. nil - если кортеж ПУСТ
4. проверка: массив не ПУСТ? - guard !array.isEmpty - если ПУСТ, то функция незамедлительно вернет 'nil' - это превенцич ошибки при попытке доступа к элементам массива
5. инициализзация переменных:
    - var currentMin = array[0] -> присваиваем ПЕРВЫЙ элемент массива - это НАЧАЛЬНОЕ значение для поиска min
    - аналогично: ицициализируем  var currentMax = array[0] присваивая ей ПЕРВЫЙ элемент массива как НАЧАЛЬНОЕ значение для поиска max
 6. итерация по МАССИВУ: 'for value in array[1...]' - начинаем цикл со ВТОРОГО элемента (индекс 1) и проходим до конца. Игнорируем ПЕРВЫЙ элемент - ? - он УЖЕ использован для инициализации min/max
 7. сравнение значений - если текущий элемент меньше 'currentMin' - то ОБНОВЛЯЕМ 'currentMin'
 8. аналогично: сравнение значений - если текущий элемент больше 'currentMax' - то ОБНОВЛЯЕМ 'currentMax'
 9. возврат результата: ПОСЛЕ завершения цикла возвращаем КОРТЕЖ с найденными min/max значениями
 10. вызов функции и вывод результата: if let bounds = minMax(...):
    - вызываем функцию с ПРИМЕРОМ массива и проверяем, что результат НЕ = nil, если результат существует - он будет присвоен переменной 'bounds'
 11. выводим min/max значение на экран - print()
 12. почему возвращаемое значение КОРТЕЖ?
    NB: кортеж - это структура данных, которая позволяет ОБЪЕДИНИТЬ несколько значений в ОДНО!
    - ага: мы возвращаем ДВА связанных значения: min/max число
     - ЯСНОСТЬ кода: возвращая кортеж (min: Int, max: Int) мы ЯВНО указываем, что функция возвращает ДВА СВЯЗАННЫХ значения
    - УДОБСТВО: могли вернуть два отдельных значения (два числа) или массив из ДВУХ элементов.
    - НО к каждому значению КОРТЕЖА можем легко обращаться ПО ИМЕНИ: bounds.min / bounds.max - это улучшает ЧИТАЕМОСТЬ кода
    NB: обработка результата
    - когда функция возвращает кортеж, легко обработать результат
 ПРЕИМУЩЕСТВА:
 1. безопасность - использования 'if let' позволяет БЕЗОПАСНО извлекать значение из КОРТЕЖА только в том случае, если функция вернула результат (НЕ 'nil')
 2. упрощение - можем НЕ создавать две отдельные переменные для min, max  -> УПРОСТИЛИ КОД
 3. гибкость - если будет нужно ДОБАВИТЬ доп. ВОЗВРАЩАЕМЫЕ значения (среднее значение/количество элементов) - сможем ЛЕГКО расширить КОРТЕЖ
 4. масштабируемость - кортежи удобны для добавления новых элементов БЕЗ изменения структуры вызова функции
 5. сохранение ЛОГИКИ - ВСЕ сохраненные результаты остаются сгруппированы ВМЕСТЕ -> код более ЛОГИЧЕН */

/*
 2. Создай СПИСОК товаров с различными характеристиками (кол-во, название). Используй typealias */
// создай псевдоним типа для кортежа 'ТОВАР'
typealias  Product = (name: String, count: Int, price: Double)
// создай typealias для кортежа 'Характеристики товара'
typealias ProductFeatures = (category: String, group: String)

// создай СПИСОК товаров, используя СЛОВАРЬ для более удобного доступа к товарами по НАЗВАНИЮ
var products: [Product] = [
    ("Apple", 12, 322.6),
    ("Buckwheat", 2, 164.8),
    ("Lemon", 2, 56.8),
    ("Potato", 24, 120.1),
    ("Carriot", 4, 54.9),
    ("Trout", 1, 1862.2),
    ("Onion", 12, 128.2),
    ("Rice", 2, 344.8)
]
// добавь новый товар в список товаров
products.append(("Grapes", 10, 340.2))

// создай СЛОВАРЬ с характеристиками товаров
var productFeatures: [String: ProductFeatures] = [
    "Apple": ("Gastronomy", "Fruits"),
    "Lemon": ("Gastronomy", "Fruits"),
    "Potato": ("Gastrinomy", "Vegetables"),
    "Carriot":("Gastrinomy", "Vegetables"),
    "Troit": ("Gastrinomy", "Fish and seafood"),
    "Onion": ("Gastrinomy", "Vegetables"),
    "Rice": ("Grocery", "Cereals"),
    "Buckwheat": ("Grocery", "Cereals"),
    "Grapes": ("Gastronomy", "Fruits")
]
// функция для вывода информации о товаре
@MainActor func printProductInfo(productName: String) {
    
if let product = products.first(where: { $0.name == productName }),
   let features = productFeatures[productName] {
    print("Товар: \(productName)")
    print("Цена: \(product.price)")
    print("Количество: \(product.count)")
    print( "Характеристики:")
    print(" - категория: \(features.category)")
    print(" - группа товаров: \(features.group)")
    } else {
print("товар НЕ НАЙДЕН")
    }
}
//пример использования
printProductInfo(productName: "Apple")
printProductInfo(productName: "Rice")
// COMMENTS: - САМА попробую
/*
 1. создай typealias типа КОРТЕЖ c именем 'товар' и элементами: название, кол-во и цена
 2. создай typealias типа КОРТЕЖ c именем 'характеристики товара' и элементами: категория и группа
 3. создай переменную 'продукты' которя принимает значение - СЛОВАРЬ и инициализирует ее значениями кортежа 'товар'
 4. создай переменную 'особенности продукта' которя принимает значение - СЛОВАРЬ и инициализируй ее значениями кортежа 'характиеристики товара'
 5. создай функцию для вывода информации о товаре с одним именованым входящим значением 'название товара' типа String
 6. в теле функции, используя оператор if - else:
    - создай константу/хранилище товар и присвой ей значение товара из словаря продукты, где название товара соответствует входящему значению;
    - создай константу/хранилище характеристика и присвой ей значение характеристики товара из словаря особенности товара по его названию
 8. распечатай на отдельных строках:
    - количество:
    - Характеристика:
    - категория:
    - группа товара
 9. если товара нет в списке - напечатай товар НЕ НАЙДЕН
 СИНТАКСИС и ЛОГИКА кода:
 1. Создание 'typealias' для кортежей
     СИНТАКСИС: используй ключевое слово 'typealias' для создания ПСЕВДОНИМА типа - позволит присвоить КОРОТКОЕ ИМЯ сложному типу - КОРТЕЖУ
    ЛОГИКА: Упрощает чтение и написание кода кода
 2. Создание списка товаров
    СИНТАКСИС: испльзуй словарь ('String: Product') для ХРАНЕНИЯ товаров, где КЛЮЧОМ является название товара, а значением - КОРТЕЖ с характеристиками
    ЛОГИКА: СЛОВАРЬ позволяет БЫСТРО находить товары по названиям, удобно для по=>ей обработки
 3. Создание СЛОВАРЯ с хар-ми товаров
    СИНТАКСИС: аналог см. выше
    ЛОГИКА: ХРАНЕНИЕ характеристик в отдельном СЛОВАРЕ -> легко расширять/изменять хар-ки БЕЗ изменения ОСНОВНОГО СПИСКА товаров
 4. Функция для вывода ИНФЫ о товаре
    СИНТАКСИС: используется
    - функция с именованным параметром 'productName'
    - ВНУТРИ функции - оператор 'if let' для БЕЗОПАСНОГО извлечения значений из словаря
    ЛОГИКА: функция позволяет
    - быстро получить / вывести ИНФУ о товаре по его НАЗВАНИЮ
    - если товара НЕТ в списке, выводится сообщение об ошибке
 5. Пример использования функции
    СИНТАКСИС: простой вызов функции с передачей названия товара в качестве АРГУМЕНТА
    ЛОГИКА: см. - КАК можно использовать функцию для получения ИНФЫ о РАЗНЫХ товарах
 */

//ОПТИМИЗАЦИЯ КОДА:
// используем СТРУКТУРУ вместо КОРТЕЖА
// структуры гибки + понятны + легко добавить новое поле
struct Good { // эта структура имеет три СВОЙСТВА
    let name: String
    let count: Int
    let price: Double
}
struct GoodFeatures { //  эта структура имеет два СВОЙСТВА
    let category: String
    let groupGoods: String
}
// улучшим безопасность: используй перечисление для обработки ошибок
enum GoodError: Error {
    case goodNotFound // ошибка, если товар НЕ НАЙДЕН
    case invalidData // ошибка, если данные НЕ КОРРЕКТНЫ
}
// определение класса для управления товарами и их характеристиками
class GoodManager {
    var goods: [String: Good] = [:] // СЛОВАРЬ для ХРАНЕНИЯ товаров: ключ - название товара
    var goodFeatures: [String: GoodFeatures] = [:] // определено как ХРАНИМОЕ СВОЙСТВО
       // СЛОВАРЬ для ХРАНЕНИЯ хар-тик товаров: ключ - ТАКЖЕ название товара
        
    // функция для ДОБАВЛЕНИЯ товара и его хар-тик в СЛОВАРИ
    func addGood(_ good: Good,features: GoodFeatures) {
           // проверка на существование товара с таким же названием
        if goods[good.name] != nil {
            //если товар УЖЕ существует - выводим сообщение
            print("Товар с таким названием УЖЕ СУЩЕСТВУЕТ")
            return
        }
        // добавление товара в словарь по его НАЗВАНИЮ
        goods[good.name] = good
        // добавление характеристик товара в словарь по его НАЗВАНИЮ
        goodFeatures[good.name] = features
        }
    // функция для вывода ИНФЫ о товаре по его названию
    func printGoodInfo(goodName: String) throws {
        // проверка на пустое занвание товара
        if goodName.isEmpty {
            // если название ПУСТОЕ - выбрасываем ОШИБКУ
            throw GoodError.invalidData
        }
        //безопасное МЗВЛЕЧЕНИЕ товара и его хар-тик из СЛОВАРЕЙ
        guard let good = goods[goodName],
              let features = goodFeatures[goodName] else {
            // если товар или его хар-ки НЕ НАЙДЕНЫ - выбрасиваем ошибку
            throw GoodError.goodNotFound
        }
        // вывод ИНФЫ о товаре
        print("Товар: \(good.name)")
        print("Цена: \(good.price)")
        print("Количество: \(good.count)")
        print("Характиеристики:")
        print(" - категория: \(features.category)")
        print(" - группа товаров: \(features.groupGoods)")
    }
}
// пример использования ОПТИМИЗИРОВАННОГО кода
// создание ЭКЗЕМПЛЯРА класса 'GoodManager' для управления товарами
let manager = GoodManager()
// создание нового товара
let apple = Good(name: "Apple", count: 12, price: 322.6)
// создание хар-тик для яблока
let appleFeatures = GoodFeatures(category: "Gastronomy", groupGoods: "Fruits")
// добавление яблока в словари
manager.addGood(apple, features: appleFeatures)
// выод ИНФЫ о бобавлении товара с обработкой ошибок
do {
    try manager.printGoodInfo(goodName: "Apple")
} catch {
    // вывод ОШИБКИ, если она возникла
    print("Ошибка: \(error)")
}
// этот код более модульный + безопасный + удобный для расширения

/* создай систему для управления книгами в библиотеке.

struct Book {
    let name: String
    let author: String
}

struct BookFeatures {
    let yearOfPublication: Int
    let genre: String
}

enum BookError: Error {
    case bookNotFound
    case invalidDate
}

class LibraryManager {
    var books: [String: Book] = [:]
    var bookFeatures: [String: BookFeatures] = [:]
    
    func addBook(_ book: Book, features: BookFeatures) {
        if books[book.name] != nil {
            print("Книга с таким названием в библиотеке УЖЕ ИМЕТСЯ")
            return
        }
        books[book.name] = book
        bookFeatures[book.name] = features
    }
    func printBookInfo(bookName: String) throws {
        if bookName.isEmpty {
            throw BookError.invalidDate
        }
        
        guard let book = books[bookName],
              let features = bookFeatures[bookName] else {
                  throw BookError.bookNotFound
                  }
            
            print("Название книги: \(book.name)")
            print("Автор: \(book.author)")
            print("Характеристики книги:")
            print("- год издания: \(features.yearOfPublication)")
            print("- жвнр: \(features.genre)")
        }
    }
// пример создания кода
let librManager = LibraryManager() // создай хранилище для экземпляра класса "управление библтотекой'
let hobbit = Book(name: "Hobbit", author: "J.R.R.Tolkien")
let hobbitFeatures = BookFeatures(yearOfPublication: 1937, genre: "Fantasy")
librManager.addBook(hobbit, features: hobbitFeatures)


let lordOfRings = Book(name: "The Lord of the Rings", author: "J.R.R.Tolkien")
let lordOfRingsFeatures = BookFeatures(yearOfPublication: 1954, genre: "Fantasy")
librManager.addBook(lordOfRings, features: lordOfRingsFeatures)
 
do {
    try librManager.printBookInfo(bookName: "Hobbit")
} catch {
    print("Ошибка: \(error)")
}

do {
    try librManager.printBookInfo(bookName: "The Lord of the Rings")
} catch {
    print("Ошибка: \(error)")
} */

// УЛУЧШЕННЫЙ КОД: задача - создай систему для управления книгами в библиотеке.
struct BookInLibrary {
    let name: String
    let author: String
}

struct BookInLibraryfeatures {
    let yearOfPublication: Int
    let genre: String
}

enum BookError: Error {
    case bookNotFound
    case invalidData
    case invalidBookName
    case duplicateBook
}

class LibrariesManager {
    var library: [String: (book: BookInLibrary, features: BookInLibraryfeatures)] = [:]
    
    func addBook(_ book: BookInLibrary, features: BookInLibraryfeatures) throws {
        if library[book.name] != nil {
            throw BookError.duplicateBook // ошибка для дубликатов
        }
        library[book.name] = (book, features)
    }
    
    func printBookInfo(bookName: String) throws {
        let trimmedBookName = bookName.trimmingCharacters(in: .whitespaces)
        if trimmedBookName.isEmpty {
            throw BookError.invalidBookName // ошибка для ПУСТОГО названия книги
        }
        
        guard let entry = library[trimmedBookName] else {
            throw BookError.bookNotFound
        }
        
        let (book, features) = entry
        print("Название книги: \(book.name)")
        print("Автор: \(book.author)")
        print("Характеристики книги:")
        print("- год издания: \(features.yearOfPublication)")
        print("- жанр: \(features.genre)")
    }
}
// пример использования класса
do {
    // создаем экземпляр класса LibrariesManager
    let librManager = LibrariesManager()
    
    // создаем книги и их характеристики
    let poisonBelt = BookInLibrary(name: "The Poison Belt", author: "Sir Arthur Conan Doyle")
    let poisonBeltFeatures = BookInLibraryfeatures(yearOfPublication: 1913, genre: "Science fiction")
    
    let houndBaskervilles = BookInLibrary(name: "The Hound of the Baskervilles", author: "Sir Arthur Conan Doyle")
    let houndBaskervillesFeatures = BookInLibraryfeatures(yearOfPublication: 1902, genre: "Detective")

// добавляем книги в библиотеку
try librManager.addBook(poisonBelt, features: poisonBeltFeatures)
try librManager.addBook( houndBaskervilles, features: houndBaskervillesFeatures)

//печатаем инфу о книгах
try librManager.printBookInfo(bookName:  "The Hound of the Baskervilles")
try librManager.printBookInfo(bookName:  "The Poison Belt")

} catch BookError.bookNotFound {
    print("Ошибка: Книга НЕ найдена.")
} catch BookError.invalidBookName {
    print("Ошибка: Некорректное название книги.")
} catch {
    print("Неизвестная ошибка: \(error)")
}
/* COMMENTS:
1. structs - это СПОСОБ определения нового ТИПА данных.
    - структура 'BookInLibrary' - это книга в библиотеке - со свойства (name, author) - константы, они ХРАНЯТ данные о книге,
    - структура 'BookInLibraryfeatures' хранит характеристики книги: жарн и год издания
 2. Перечисление ОШИБОК - enum - для определения НАБОРА связанных значений
    - каждое значение - опр. тип ошибки
3. КЛАСС управления библиотекой - class - шаблон для создания ОБЪЕКТОВ с ОБЩИМИ свойствами и методами.
    - класс 'LibrariesManager' управляет коллекцией книг
4. СЛОВАРЬ - dictionary - это коллекция
    - var library: [String: (book: BookInLibrary, features: BookInLibraryfeatures)] = [:]
    - ключ: название книги(строка),
    - значение - КОРТЕЖ, содержащий объект 'BookInLibrary' + его хар-ки 'BookInLibraryfeat'
5. МЕТОДЫ класса - это функция ВНУТРИ класса
    - метод 'addBook(...) - добавляет книгу в библиотеку
6. ПАРАМЕТРЫ - это входные данные для МЕТОДА
    -(_ book: BookInLibrary, features: BookInLibraryfeatures) - входные данные для метода
    - 'throws' - указывает, что метод м. выбросить ошибки.
    - если книга с таким названием УЖЕ существует в библиотеке - метод выбросит ошбку 'duplicateBook'
    - если книга НЕ найдена, она добавляется с помощью ЗАПИСИ в словарь
7. МЕТОД печати инфы о книге - выводит инфу о книге на экран
    - удаляет ПРОБЕЛЫ из названия книги - методом 'trimmingCharacters(in:'
    - если название ПУСТОЕ - выбрасывается ошибка 'invalidBookName'
 8. используется конструкция 'guard' - чтобы проверить НАЛИЧИЕ книги в библиотеке.
    - если книга НЕ НАЙДЕНА - выбрасывается ошибка 'bookNotFound'
    - если книга НАЙДЕНА - инфа о ней выводится на экран
9. ПРИМЕР использования КЛАССА
    - создай экземпляр класса 'LibrariesManager'
    - создай объекты книг и их хар-тик
    - добавь книгу в библиотеку методом 'addBook'
    - выведи инфу о книге на экран методом 'printBookInfo'
    - обработка ошибок - конструкция 'do-catch'
ЗАКЛЮЧЕНИЕ:
 Мой код - это простая система управления библиотекой с использованием:
 - структур
 - классов
 - перечислений.
 Этот код демонстрирует основные принципы ООП, он показывает КАК можно организовать данные и МЕТОДЫ управления ими. */
