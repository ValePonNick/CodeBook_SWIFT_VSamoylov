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

if let bounds = minMax(array: [8, -2, 12, 36, 44, -21]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
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
 5. сохранение ЛОГИКИ - ВСЕ сохраненные результаты остаются сгруппированы ВМЕСТЕ -> код более ЛОГИЧЕН
 */

// доработаем код - добавим поиск СРЕДНЕГО ЗНАЧЕНИЯ и КОЛИЧЕСТВА элементов в массиве
func averageCount (of array:[Int]) -> Int? {
    guard !array.isEmpty else { return nil }
    
    let sum = array.reduce(0, +)  // суммируем ВСЕ элементы массива
    let average = sum/Int(array.count) // находим среднее значение
    
    return average
}
// пример использования
if let avg = averageCount(of: [8, -2, 12, 36, 44, -21]) {
    print("среднее значение:  \(avg)")
} else {
    print("массив пуст")
}
