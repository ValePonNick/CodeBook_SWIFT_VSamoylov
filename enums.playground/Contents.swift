import UIKit

// ENUMERATIONS: перечисления

/*
 1. напиши: что такое enum, их сущность и назначение.
Где и как их можно использовать? */
/*
 ENUM - это пользовательский тип данных с фиксированным набором связанных значений.
 Эти конструкции нужны для создания мощных/гибких стуктур данных. Улучшает
 читаемость + (типо)безопасность кода. как? предотвращает случайное присвоение недопустимых значений переменными,т.к. они м. принимать только заранее
 определенные значения ИЗ перечисления. ENUM заменяет 'магиеские числа' и строки на
 понятные имена.
 Применение:
 1. уровни сложности в играх: легкий, средний, сложный
 2. статусы заказа: получен, в обработке, отправлен, доставлен - это упрощает оценку текущего состояния заказа
 3. дни недели: это предотвращает ошибки при работе с датами
 */
/*
 2. напиши 10 enum разных типов. NB: создай СВОИ enums. Соблюдай правила написания. Пропусти их через switch и распечатай */
// 2.1 ПРОСТЫЕ ENUMs - определяют набор значений
enum Season: CaseIterable  {
    case winter, spring, summer, autumn
}
// создай switch - оператор для обработки разных случаев
let favoriteSeason = Season.spring

switch favoriteSeason {
case .winter:
    print("The snow in bitter cold, fell all the night; And we awoke to see the garden white. 'Ann Elliott'")
case .spring:
    print("My heart is fresh and fearless and over-brimmed with spring. 'Sara Teasdale'")
case .summer:
    print("Above the hills, along the blue, round the bright air with footing true; To please the child, to paint the rose, the gardener of the World, he goes. 'Pobert Louis Stevenson'")
case .autumn:
    print("In the other gardens and all up the vale; From the autumn bonfires see the smoke trail! 'Pobert Louis Stevenson'")
}

// итерация и печать всех случаев перечисления
for currentSeason in Season.allCases {
    print(currentSeason)
}
/*
 КОММЕНТАРИЙ:
 1. enum Season имеет 4 значения
 2. используя оператор 'switch' - проверь значение константы 'favoriteSeason'
 3. используя свойство '.allCases' -> пройди по каждому значению
 4. выведи их на экран
 */
// 2.2 ассоциированные значения: каждый случай имеет доп. значения РАЗНЫХ типов
enum Person {
    case human(String, Int), elf(String)
}
// 2.3 чистые значения('raw values'): каждому случаю присваиваетя ФИКСИРОВАННОЕ значение
enum Flagman {
    case samsung(model: String)
}
enum ProgrammingLanguage: String {
    case swift = "Swift"
    case pithon = "Pithon"
    case java = "Java"
}
enum MeasurementUnit: Double {
    case meter = 1.0
    case kilometer = 1000.0
    case centimeter = 0.01
}
/* 2.4 альтернативы использования 'switch' для обработки значений enum: условный
оператор  'if-else' */
enum Direction {
    case north
    case south
    case east
    case west
}

let directionToHead = Direction.south

if case .north = directionToHead {
    print("Heading north")
} else if case .south = directionToHead {
    print("Heading south")
}
/* 3. создай свое резюме, используя enum: имя, проф., возраст, навыки, образование, хобби и пр. Пропусти резюме через if-else/switch - ??? - пойми читаемость/красоту кода. */
// перечисления для хобби
enum Hobby: String {
    case sport = "trekking"
    case programming = "Swift"
    case treveling = "treveling by car"
    case music = "juzz"
}
// структура для резюме
struct Resume {
    let name: String
    var nickname: String
    var sername: String
    var hobby: [Hobby]
    var age: Int
    
    func display() {
        print("Резюме:")
        print("имя: \(name), фамилия: \(sername), ник: \(nickname), возраст: \(age), хобби: \(hobby.map { $0.rawValue }.joined(separator: ","))")
    }
}
// пример использования
let myResume = Resume(
    name: "Valery",
    nickname: "ValePonick",
    sername: "Ponomareva",
    hobby: [.music, .programming, .sport, .treveling],
    age: 57
)
// вывод резюме
myResume.display()


/* преимущества оператора 'switch' перед конструкцией 'if-else':
 1. наглядность + структурированность + (типо)безопасность
 2. производительность
 3. устойчивость к ошибкам - блок 'default': когда ни одно из значений НЕ совпадает
 4. идеально для работы с enum, т.к. позволяет ЯВНО обрабатывать КАЖДЫЙ случай
 
 преимущества конструкции if-else перед оператором switch:
 1. сложные ЛОГИЧЕСКИЕ поверки - '&&' / '||' -> 'if-else' > читабелен + удобен
 2. диапазоны значений - >/<, 'между 1...12' т.к. 'switch' НЕ ПОДДЕРЖИВАЕТ ДИАПАЗОНЫ!
 3. когда условия зависит от РАЗНЫХ ТИПОВ данных/сложных выражений именно 'if-else'
 позволяет > точно формулировать ЛОГИКУ
 4. если меньшее кол-во случаев -> проще использовать if-else */

/*
 4. используй enum и задай цвета для MacBook, IPhone, IPad, AppleWatch.
 Девайсы располагаем в теле функции. Итог программы: "Айфон - розовый" */
                                                                                   
