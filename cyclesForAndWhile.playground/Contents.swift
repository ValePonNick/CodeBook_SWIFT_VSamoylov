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
    
    // Создаем пустое множество - Set - для уникальных индексов
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

/* ЗАДАЧА от O'Reilly 'HEAD FIRST. LEARNING SWIFT': напиши функцию, которая из списка ингредиентов для пиццы, удалит дубликаты и выберет четыре случайных ингридиента и сгенерирует случайную пиццу. Это можно сделать прямо внутри вызова функции 'print'.  НО шеф-повару не понравилось, что один ингредиент может повторяться несколько раз. Напиши код так, чтобы этого НИКОГДА не произошло. */

let pizzaIngredients = ["chicken", "salami", "ananas", "mozzarella", "bazil", "bacon", "tomato", "mashroom", "ham", "chicken", "salami", "jalapeno", "feta", "capers", "pesto", "ananas", "mozzarella","mashroom", "ham", "pesto", "ananas"]

let uniqueIngredients = Array(Set(pizzaIngredients))
print(uniqueIngredients)
if !uniqueIngredients.isEmpty {
        let randomPizza = Array(uniqueIngredients.shuffled().prefix(min(4, uniqueIngredients.count)))
        
        print(randomPizza)
    } else {
        print("uniqueIngredients пуст")
    }
// ЗАДАЧА (продолжение) напиши функцию, которая из списка ингредиентов для пиццы, удалит дубликаты и выберет четыре случайных ингридиента и сгенерирует две случайные пиццы так, чтобы ингридиенты в них НЕ повторялись. */

let IngredientsForPizza = ["chicken", "salami", "ananas", "mozzarella", "bazil", "bacon", "tomato", "mashroom", "ham", "chicken", "salami", "jalapeno", "feta", "capers", "pesto", "ananas", "mozzarella","mashroom", "ham", "pesto", "ananas"] // массив строк - в нем есть повторяющиеся ингридиенты

// определение ФУНКЦИИ для генерации случайных пицц
func generateRandomPizzas(ingredients: [String], count: Int, maxIngredientsPerPizza: Int) -> [[String]] { // эта функция принимает ТРИ параметра: массив строк - ингредиентов, count - количество пицц, которые нужно сгенерировать, и max кол-во ингредиентов на 1 пиццу. Функция возвращает ДВУХМЕРНЫЙ массив строк - где КАЖДЫЙ внутренний массив - пицца с ее ингредиентами
    let uniqueIngredients = Array(Set(ingredients)) // удалим дубликаты Array -> Set
    
    if uniqueIngredients.count < count * maxIngredientsPerPizza { // проверка наличи] дост. кол-ва уникал. ингредиентов
        print("Недостаточно уникальных ингредиентов для генерации пицц.")
        return []
    }
    
    let shuffledIngredients = uniqueIngredients.shuffled() // перемешиваем уникал.ингредиенты рандомно
    
    var pizzas: [[String]] = [] // инициализируем ПУСТОЙ массив для ХРАНЕНИЯ пицц
    
    // генерация пицц
    for i in stride(from: 0, to: count * maxIngredientsPerPizza, by: maxIngredientsPerPizza) { // цикл проходит по массиву перемешанных ингредиентов с шагом 'maxIngredientsPerPizza'.
        let pizza = Array(shuffledIngredients[i..<i+maxIngredientsPerPizza])
        pizzas.append(pizza) // Для КАЖДОЙ итерации он извлекает из массива ингредиенты для ОДНОЙ пиццы и добавляет их в массив 'pizzas'
    }
    
    return pizzas // функция возвращает массив сгенерированных пицц
}
// вызов функции и вывод результатов
let randomPizzas = generateRandomPizzas(ingredients: pizzaIngredients, count: 2, maxIngredientsPerPizza: 4)

for (index, pizza) in randomPizzas.enumerated() {
    print("Пицца \(index + 1): \(pizza)")
}
// Этот код ГАРАНТИРУЕТ, что ингридиенты из РАЗНЫХ пицц НЕ ПОВТОРЯЮТСЯ.

// COMMENTS:
/*
 В коде использованы основные структуры данных:
     1.    Массивы:
     •    `pizzaIngredients` — это массив строк, содержащий список ингредиентов для пиццы.
     •    `uniqueIngredients` — это массив строк, содержащий уникальные ингредиенты после удаления дубликатов.
     •    `shuffledIngredients` — это массив строк, содержащий перемешанные уникальные ингредиенты.
     •    `pizzas` — это двумерный массив строк, где каждый внутренний массив представляет собой пиццу с ее ингредиентами.
     2.    Set (Множество):
     •    Используется для удаления дубликатов из списка ингредиентов. `Set` в Swift — это структура данных, которая хранит только уникальные элементы.
 Эти структуры данных являются линейными, где массивы — это наиболее простая и широко используемая структура данных, а `Set` — это специализированная структура, которая помогает с удалением дубликатов.
 
 В коде использованы операции с массивами:
     1.    Удаление дубликатов:
     •    Используется `Set` для удаления дубликатов из массива ингредиентов.
     2.    Перемешивание элементов:
     •    Метод `shuffled()` используется для перемешивания элементов в массиве.
     3.    Срез массива:
     •    Используется для извлечения части массива, например, `Array(shuffledIngredientsi..<i+maxIngredientsPerPizza)`.
     4.    Добавление элементов в массив:
     •    массив `pizzas` заполняется сгенерированными пиццами с помощью метода `append()`. */

// ОПТИМИЗИРОВАННЫЙ КОД
// Массив ингредиентов для пиццы
let ingredientsForPizza = ["chicken", "salami", "ananas", "mozzarella", "bazil", "bacon", "tomato", "mashroom", "ham", "chicken", "salami", "jalapeno", "feta", "capers", "pesto", "ananas", "mozzarella","mashroom", "ham", "pesto", "ananas"]

// Функция для генерации случайных пицц
func generatedRandomPizzas(ingredients: [String], count: Int, maxIngredientsPerPizza: Int) -> [[String]] {
    // Удаление дубликатов
    let uniqueIngredients = Array(Set(ingredients))
    
    // Проверка наличия ингредиентов
    if uniqueIngredients.count < count * maxIngredientsPerPizza {
        print("Недостаточно уникальных ингредиентов для генерации пицц.")
        return []
    }
    
    // Перемешивание ингредиентов
    let shuffledIngredients = uniqueIngredients.shuffled()
    
    // Инициализация массива для хранения пицц
    var pizzas: [[String]] = []
    var remainingIngredients = shuffledIngredients
    
    // Генерация пицц
    for _ in 1...count {
        let pizza = Array(remainingIngredients.prefix(maxIngredientsPerPizza))
        pizzas.append(pizza)
        
        // Удаление использованных ингредиентов
        remainingIngredients = Array(remainingIngredients.dropFirst(maxIngredientsPerPizza))
    }
    
    return pizzas
}

// Вызов функции и вывод результатов
let randomsPizzas = generatedRandomPizzas(ingredients: ingredientsForPizza, count: 4, maxIngredientsPerPizza: 4)

for (index, pizza) in randomsPizzas.enumerated() {
    print("Пицца - уникум: \(index + 1): \(pizza)")
}
