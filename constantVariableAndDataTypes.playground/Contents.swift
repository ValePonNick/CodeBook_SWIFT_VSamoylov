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
// создай псевдоним типа для кортежа 'ТОВАР' с параметрами/значениями: название, кол-во, цена
typealias  Product = (name: String, count: Int, price: Double)
// псевдоним типа для кортежа 'ХАРАКТЕРИСТИКИ ТОВАРА'
typealias ProductFeatures = (category: String, group: String)

// создай СПИСОК товаров
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
 // создай СЛОВАРЬ с характеристиками товаров
var productFeatures: [String: ProductFeatures] = [
    "Apple": ("Gastronomy", "Fruits"),
    "Lemon": ("Gastronomy", "Fruits"),
    "Potato": ("Gastrinomy", "Vegetables"),
    "Carriot":("Gastrinomy", "Vegetables"),
    "Troit": ("Gastrinomy", "Fish and seafood"),
    "Onion": ("Gastrinomy", "Vegetables"),
    "Rice": ("Grocery", "Cereals"),
    "Buckwheat": ("Grocery", "Cereals")
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
 1.
 2.
 3.
 4.
 5.
 6.
 7.
 */

