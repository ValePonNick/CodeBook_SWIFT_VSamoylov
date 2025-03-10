import UIKit

// REPEATED CYCLES: 'for' and 'while'

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


/* ЗАДАЧА от O'Reilly 'HEAD FIRST. LEARNING SWIFT': напиши функцию, которая из списка ингредиентов для пиццы, выберет четыре случайных ингредиента и сгенерирует случайную пиццу.  НО шеф-повару не понравилось, что один и тот же ингредиент может повторяться несколько раз. Напиши код так, чтобы этого НИКОГДА не произошло. */

// ЗАДАЧА: используй цикл 'for' & 'while'
var uniqueIngreds = ["ananas", "mozzarella", "bazil", "bacon", "tomato", "mashroom", "ham", "chicken", "salami", "jalapeno", "feta", "capers", "pesto"]

var tempIngredsList = uniqueIngreds // создай КОПИЮ исходного массива


var pizza: [String] = [] // создай переменную для хранения пустого массива строк
let count = 4
for _ in 1...count { // повтори цикл четыре раза
    if tempIngredsList.count >= 1 {
        let tempIngred = tempIngredsList.randomElement()
        pizza.append(tempIngred!)
        if let index = tempIngredsList.firstIndex(of: tempIngred!) {
            tempIngredsList.remove(at: index)
        } else {
            print("Не хватает ингридиентов для пиццы")
            break
        }
    }
}
print("Состав пиццы: \(pizza)") // Состав пиццы: ["bacon", "jalapeno", "mozzarella", "chicken"]

// вар. 1
let unicumIngredients = ["ananas", "mozzarella", "bazil", "bacon", "tomato", "mashroom", "ham", "chicken", "salami", "jalapeno", "feta", "capers", "pesto"]

if !unicumIngredients.isEmpty { // Проверяем, чтобы unicumIngredients не был пустым
    var indices = Array(0..<unicumIngredients.count)  // Создаем массив индексов от 0 до количества ингредиентов
    indices.shuffle()  // Перемешиваем индексы, чтобы получить случайный порядок
    var randomPizza: [String] = []  // Создаем пустой массив для случайных ингредиентов
    var uniqueIndices: Set<Int> = Set() // Создаем пустое множество - Set - для уникальных индексов
   
    for index in indices { // Цикл, который гарантированно ЗАВЕРШИТСЯ!
        if uniqueIndices.insert(index).inserted {  // Проверяем, что индекс еще не использовался
            randomPizza.append(unicumIngredients[index])  // Добавляем ингредиент в массив
            if randomPizza.count == min(4, unicumIngredients.count) { // Если выбрали достаточно ингредиентов, выходим из цикла
                break // Эта строка ОСТАНАВЛИВАЕТ цикл
            }
        }
    }
    print(randomPizza)   // Выводим результат
} else {
    print("unicumIngredients пуст")  // Если unicumIngredients пуст, выводим сообщение
}

// вар. 2

if !unicumIngredients.isEmpty { // Проверяем, чтобы unicumIngredients не был пустым
    var indices = Array(0..<unicumIngredients.count) // Создаем массив индексов от 0 до количества ингредиентов
    indices.shuffle() // Перемешиваем индексы, чтобы получить случайный порядок
    let selectedIndices = Array(indices.prefix(min(4, unicumIngredients.count)))  // Выбираем первые min(4, unicumIngredients.count) индексов
    let randomPizza = selectedIndices.map { unicumIngredients[$0] } // Создаем массив случайных ингредиентов по выбранным индексам
   
    print(randomPizza) // Выводим результат
} else {
    print("unicumIngredients пуст")  // Если unicumIngredients пуст, выводим сообщение
}

// вар. 3 ПРОСТО + ЭФФЕКТИВНО

if !unicumIngredients.isEmpty {
    let randomPizza = Array(unicumIngredients.shuffled().prefix(min(4, unicumIngredients.count)))
    print(randomPizza)
} else {
    print("unicumIngredients пуст")
}

/* ЗАДАЧА 2: напиши функцию, которая из списка ингредиентов для пиццы, удалит дубликаты и выберет четыре случайных ингридиента и сгенерирует случайную пиццу. НО шеф-повару не понравилось, что один ингредиент может повторяться несколько раз. Напиши код так, чтобы этого НИКОГДА не произошло. */

let pizzaIngredients = ["chicken", "salami", "ananas", "mozzarella", "bazil", "bacon", "tomato", "mashroom", "ham", "chicken", "salami", "jalapeno", "feta", "capers", "pesto", "ananas", "mozzarella","mashroom", "ham", "pesto", "ananas"]

let uniqueIngredients = Array(Set(pizzaIngredients))
print(uniqueIngredients)
if !uniqueIngredients.isEmpty {
        let randomPizza = Array(uniqueIngredients.shuffled().prefix(min(4, uniqueIngredients.count)))
        
        print(randomPizza)
    } else {
        print("uniqueIngredients пуст")
    }
// ЗАДАЧА 3: напиши функцию, которая из списка ингредиентов для пиццы, удалит дубликаты и выберет четыре случайных ингридиента и сгенерирует две случайные пиццы так, чтобы ингридиенты в них НЕ повторялись. */

let IngredientsForPizza = ["chicken", "salami", "ananas", "mozzarella", "bazil", "bacon", "tomato", "mashroom", "ham", "chicken", "salami", "jalapeno", "feta", "capers", "pesto", "ananas", "mozzarella","mashroom", "ham", "pesto", "ananas"] // массив строк - в нем есть повторяющиеся ингридиенты

// определение ФУНКЦИИ для генерации случайных пицц
func generateRandomPizzas(ingredients: [String], count: Int, maxIngredientsPerPizza: Int) -> [[String]] { // эта функция принимает ТРИ параметра: массив строк - ингредиентов, count - количество пицц, которые нужно сгенерировать, и max кол-во ингредиентов на 1 пиццу. Функция возвращает ДВУХМЕРНЫЙ массив строк - где КАЖДЫЙ внутренний массив - пицца с ее ингредиентами
    let uniqueIngredients = Array(Set(ingredients)) // удалим дубликаты Array -> Set
    
    if uniqueIngredients.count < count * maxIngredientsPerPizza { // проверка НАЛИЧИЯ дост. кол-ва уникал. ингредиентов
        print("Недостаточно уникальных ингредиентов для генерации пицц.")
        return []
    }
    
    let shuffledIngredients = uniqueIngredients.shuffled()
    
    var pizzas: [[String]] = []
    
    // генерация пицц
    for i in stride(from: 0, to: count * maxIngredientsPerPizza, by: maxIngredientsPerPizza) { // цикл проходит по массиву перемешанных ингредиентов с шагом 'maxIngredientsPerPizza'.
        let pizza = Array(shuffledIngredients[i..<i+maxIngredientsPerPizza])
        pizzas.append(pizza) // Для КАЖДОЙ итерации цикл извлекает из массива ингредиенты для ОДНОЙ пиццы и добавляет их в массив 'pizzas'
    }
    
    return pizzas
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
 
 В коде использованы операции с МАССИВАМИ:
     1. `Set`  - для удаления дубликатов из массива ингредиентов.
     2. Метод `shuffled()` - для перемешивания элементов в массиве.
     3. для извлечения части массива - `Array(shuffledIngredientsi..<i+maxIngredientsPerPizza)`.
     4.   массив `pizzas` заполняется сгенерированными пиццами - метод `append()`. */

// ЗАДАЧА 3: код ОПТИМИЗИРОВАН

let ingredientsForPizza = ["chicken", "salami", "ananas", "mozzarella", "bazil", "bacon", "tomato", "mashroom", "ham", "chicken", "salami", "jalapeno", "feta", "capers", "pesto", "ananas", "mozzarella","mashroom", "ham", "pesto", "ananas"]

// Функция для генерации случайных пицц
func generatedRandomPizzas(ingredients: [String], count: Int, maxIngredientsPerPizza: Int) -> [[String]] {
    let uniqueIngredients = Array(Set(ingredients))
    
    if uniqueIngredients.count < count * maxIngredientsPerPizza { // Проверка наличия ингредиентов
        print("Недостаточно уникальных ингредиентов для генерации пицц.")
        return []
    }
   
    let shuffledIngredients = uniqueIngredients.shuffled()
    var pizzas: [[String]] = []
    var remainingIngredients = shuffledIngredients
    
    for _ in 1...count { // Генерация пицц
        let pizza = Array(remainingIngredients.prefix(maxIngredientsPerPizza))
        pizzas.append(pizza)
        
        remainingIngredients = Array(remainingIngredients.dropFirst(maxIngredientsPerPizza))
    } // Удаление ИСПОЛЬЗОВАННЫХ ингредиентов
    
    return pizzas
}

// Вызов функции и вывод результатов
let randomsPizzas = generatedRandomPizzas(ingredients: ingredientsForPizza, count: 4, maxIngredientsPerPizza: 4)

for (index, pizza) in randomsPizzas.enumerated() { // это КОРТЕЖ + метод '.enumerated()'
    print("Пицца - уникум: \(index + 1): \(pizza)")
}
// COMMENTS:
/*
 1. метод '.enumerated()' возвращает последовательность пар, где каждый элемент: индекс + значение ИСХОДНОЙ коллекции
 
 Разложение пары в цикле:
1. `(index, pizza)` — это разложение пары, возвращаемой методом `enumerated()` - это синтаксическая конструкция, позволяющая присвоить индекс + значение разным переменным в цикле.
 2. `enumerated()` возвращает последовательность пар, где каждый элемент — это кортеж `(offset, element)`, но в Swift это не обязательно явный кортеж, а скорее пара значений, которую можно разложить на две переменные. */
