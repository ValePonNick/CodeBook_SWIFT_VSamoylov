import UIKit

// OPTIONAl TYPES + ARRAYS

/* ЗАДАЧА 1: создай массив 'Int?' и добавь в него несколько чисел и 'nil'. Найди max значение среди не-nil - используй 'if let' */

var arrayOptional: [Int?] = [1, nil, 2, 3, 4, nil]

// удаление 'nil' значений и поиск max значения
if let maxValue = arrayOptional.compactMap({ $0 }).max() {
    print("Максимальное значение: \(maxValue)") // Максимальное значение: 4
} else {
    print("Массив пуст либо содержит только nil значения")
}

/* ЗАДАЧА 2: создай массив 'Int?' и добавь в него несколько чисел и 'nil'. Найди max значение среди не-nil - используй 'guard let' */

/* ЗАДАЧА 3: создай массив 'Int?' и добавь в него несколько чисел и 'nil'. Найди max значение среди не-nil - используй 'nil-coalescing' */
