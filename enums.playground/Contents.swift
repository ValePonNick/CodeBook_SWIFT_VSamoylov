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
 2. используя свойство '.allCases' -> пройди по каждому значению
 3. выведи их на экран
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
    
   
    
    

/*
 3. создай свое резюме, используя enum: имя, проф., возраст, навыки, образование, хобби и пр.
 Пропусти резюме через if-else/switch - ??? - пойми читаемость/красоту кода.
 Оцени первый/второй вариант написания */

/*
 4. используй enum и задай цвета для MacBook, IPhone, IPad, AppleWatch.
 Девайсы располагаем в теле функции. Итог программы: "Айфон - розовый" */
