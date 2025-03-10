import UIKit

// REPEATED CYCLES: 'for' and 'while'

/* ЗАДАЧА от O'Reilly 'HEAD FIRST. LEARNING SWIFT': напиши функцию, которая из списка ингредиентов для пиццы, выберет четыре случайных ингридиента четыре рза и сгенерирует случайную пиццу. Это можно сделать прямо внутри вызова функции 'print'.  НО шеф-повару не понравилось, что один ингредиент может повторяться несколько раз. Напиши код так, чтобы этого НИКОГДА не произошло. */

let unicumIngredients = ["ananas", "mozzarella", "bazil", "bacon", "tomato", "mashroom", "ham", "chicken", "salami", "jalapeno", "feta", "capers", "pesto"]
// Проверяем, чтобы unicumIngredients не был пустым
if !unicumIngredients.isEmpty {
    // Создаем массив индексов от 0 до количества ингредиентов
    var indices = Array(0..<unicumIngredients.count)
    
    // Перемешиваем индексы, чтобы получить случайный порядок
    indices.shuffle()
    
    // Создаем пустой массив для случайных ингредиентов
    var randomPizza: [String] = []
    
    // Создаем пустой набор для уникальных индексов
    var uniqueIndices: Set<Int> = Set()
    
    // Цикл, который гарантированно завершится
    for index in indices {
        // Проверяем, что индекс еще не использовался
        if uniqueIndices.insert(index).inserted {
            // Добавляем ингредиент в массив
            randomPizza.append(unicumIngredients[index])
            
            // Если мы выбрали достаточно ингредиентов, выходим из цикла
            if randomPizza.count == min(4, unicumIngredients.count) {
                break // Эта строка останавливает цикл
            }
        }
    }
    
    // Выводим результат
    print(randomPizza)
} else {
    // Если unicumIngredients пуст, выводим сообщение
    print("unicumIngredients пуст")
}

// вар. 2

// Проверяем, чтобы unicumIngredients не был пустым
if !unicumIngredients.isEmpty {
    // Создаем массив индексов от 0 до количества ингредиентов
    var indices = Array(0..<unicumIngredients.count)
    
    // Перемешиваем индексы, чтобы получить случайный порядок
    indices.shuffle()
    
    // Выбираем первые min(4, unicumIngredients.count) индексов
    let selectedIndices = Array(indices.prefix(min(4, unicumIngredients.count)))
    
    // Создаем массив случайных ингредиентов по выбранным индексам
    let randomPizza = selectedIndices.map { unicumIngredients[$0] }
    
    // Выводим результат
    print(randomPizza)
} else {
    // Если unicumIngredients пуст, выводим сообщение
    print("unicumIngredients пуст")
}

// вар. 3 ПРОСТО + ЭФФЕКТИВНО

if !unicumIngredients.isEmpty {
    let randomPizza = Array(unicumIngredients.shuffled().prefix(min(4, unicumIngredients.count)))
    
    print(randomPizza)
} else {
    print("unicumIngredients пуст")
}

/* ЗАДАЧА: есть массив чисел от 1 до 10. Выбери случайное число из этого массива. Если массив пуст, НЕ ДЕЛАЙ НИЧЕГО. */
let numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// вар. 1 если УВЕРЕНЫ, что массив НЕ ПУСТОЙ
if !numbers.isEmpty {
    let randomNumber = numbers.randomElement()
    print(randomNumber!)
}
// вар. 2 КРАТКО, но если УВЕРЕНЫ, что массив НЕ ПУСТОЙ
if !numbers.isEmpty {
    print(numbers.randomElement()!)
}

// вар. 3 БОЛЕЕ БЕЗОПАСНЫЙ + ПРАВИЛЬНЫЙ код
if !numbers.isEmpty {
    if let randomNumber = numbers.randomElement() {
        print(randomNumber)
    }
} // используй безопасное разворачивание 'if let'

// вар. 4 ТАКЖЕ БЕЗОПАСНЫЙ + ПРАВИЛЬНЫЙ код
if !numbers.isEmpty {
    let randomNumber: Int = numbers.randomElement() ?? 0
        print(randomNumber)
    } //
/*
1. используй nil-коалесценцию (`??`) для предоставления значения по умолчанию (`0`), если `numbers.randomElement()` вернет `nil`.
 2. Однако, т.к. я уже проверила, что массив НЕ ПУСТ, `numbers.randomElement()` никогда НЕ вернет `nil`, => значение по умолчанию (`0`) никогда НЕ будет использовано.
 3. Этот код избыточен, но технически ПРАВИЛЕН. */
