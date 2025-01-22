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
    case programming = "learning Swift"
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
// испоьзуй 'if-else' / 'switch' для обработки различных условий в коде
// - хотим вывести сообщение об ОСНОВНОМ хобби, используя 'if-else'
         
        if hobby.isEmpty {
            print("у этого человека нет хобби")
        } else {
            let mainHobby = hobby[1] // это вариант 2: испольpуй switch
            print("хобби: \(hobby.map { $0.rawValue }.joined(separator: ","))")
 //           print("основное хобби: \(hobby[1].rawValue)") это вариант 1
            
            switch mainHobby {
            case .sport:
                print("основное хобби - спорт. Здоровый образ жизни важен!")
            case .programming:
                print("основное хобби - программирование. Изучение основ Swift  увлекательно и полезно!")
            case .treveling:
                print("основное хобби - путешествия. Это позволяет увидеть новые места и познакомиться с интересными людьми")
            case .music:
                print("основное хобби - музыка. Она обогащает внутренний мир человека")
            }
        }
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
// КОММЕНТАРИЙ:
/*
 1. перечисление 'hobby' - создает список/Array [возм-х хобби] для удобства отображения
 2.структура 'Resume' - хранит инфу о человеке: имя, ник, возраст и массив [хобби] + метод 'display' выводит инфу на консоль
 3. создание ЭКЗЕМПЛЯРА: создай резюме с именем "Valery", фамилией, возрастом 57 и 4-мя хобби
 4. метод 'display()' использует:
 - метод '.map { $0.rawValue }' для преобразования КАЖДОГО элемента в его строковое значение
 - метод '.joined(separator: ","' для объединения ВСЕХ элементов массива в ОДНУ строку, разделяя их запятой
 5. используя 'if-else' -> проверяем: пуст ли массив 'hobby'? если пуст - выводим соотв. сообщение. Если нет - выводим список хобби и основное хобби. */


// испоьзуй 'if-else' / 'switch' для обработки различных условий в коде
// - хотим вывести сообщение об ОСНОВНОМ хобби, используя 'if-else'
 
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
                                                                                   
/* ЗАДАЧА от Perplexity: создай резюме с доп. функциями -
 1. добавь в хобби еще неск. вариантов - рисование, кулинария, фото
 2. добавь новое поле в структуру resume - город
 3. метод для подсчета кол-ва хобби и реализуй его в структуре resume - он будет возвращать кол-во хобби у человека
 4. метод для вывода инфы о хобби:
 - создай метод, который выведет инфу о каждом хобби отдельно
 - используй 'switch' для вывода уникального сообщения для каждого типа хобби
 5. обработка пустого массива хобби - убедись, что программа корректно обрабатывает случай, когда массив пуст и выводит соотв. сообщение
 6. ПРИМЕР использования: создай объект resume, заполно его данными, вызови методы для отображения инфы о человеке и его хобби
 7. доп. рекомендации:
 - протестируй програму с разными наборами данных
 - используй РАЗНЫЕ конструкции 'if-else' / 'switch' - увидишь КАК они влияют на вывод инфы */

// примерный шаблон кода

// ваше перечисление хобби

// объявляем перечисление Hobbies
enum Hobbies: String {
    case sport = "tennis, nordick walking"
    case reeding = "detectives, fantasy, histopical novells"
    case drawing = "oil drawing, watercolor drawing"
    case cooking = "bakery, cakes"
    
    var info: HobbiesInfo {
        switch self {
        case .sport:
            return HobbiesInfo(name: "Спорт", description: self.rawValue, benefits: "здоровый образ жизни")
        case .reeding:
            return HobbiesInfo(name: "Чтение", description: self.rawValue, benefits: "Развитие воображения, расширение словарного запаса")
        case .drawing:
            return HobbiesInfo(name: "Живопись",
                               description: self.rawValue,
                               benefits: "развитие творчеких способностей")
        case .cooking:
            return HobbiesInfo(name: "Кулинария", description: self.rawValue, benefits: "развитие вкуса, эксперименты с новыми рецептами")
        }
    }
}
// структура для информации о хобби
struct HobbiesInfo {
    let name: String
    let description: String
    let benefits: String
}
// структура резюме
struct Resumes: CustomStringConvertible {
    let name: String
    let sername: String
    let nickname: String
    var hobbies: [Hobbies]
    let country: String
    let sity: String
    var age: Int
    
    var description: String {
        "Резюме: \nимя: \(name), фамилия: \(sername), профессиональный ник: \(nickname), хобби: \(hobbies.map { $0.rawValue }.joined(separator: ",")), страна: \(country), город: \(sity), возраст: \(age)"
    }
    
    func countHobbies() {
        let countHobbies = hobbies.count
        print("виды хобби: их - \(countHobbies)")
    }
    
    func display() {
        print(self.description)
        
        if hobbies.isEmpty {
            print("массив пуст. У Джейми Оливера нет хобби")
        } else {
            print("хобби: \(hobbies.map { $0.rawValue } )")
            
            if let firstHobby = hobbies.first {
                switch firstHobby {
                case .sport:
                    print("основное хобби - спорт. Здоровый образ жизни важен!")
                case .reeding:
                    print("основное хобби - чтение. Это - увлекательно и полезно!")
                case .drawing:
                    print("основное хобби - живопись. Это позволяет увидеть новые места и познакомиться с интересными людьми")
                case .cooking:
                    print("основное хобби - кулинария. Она разнообразит жизнь человека")
                }
            }
        }
    }

func displayHobbiesInfo() {
    for hobby in hobbies {
        let info = hobby.info
        print("Хобби: \(info.name)")
        print("Описание: \(info.description)")
        print("Преимущество: \(info.benefits)")
        print()
        }
    }
}
// пример создания кода
let myResumes = Resumes(
    name: "James",
    sername: "Trevor",
    nickname: "Jamie Oliver",
    hobbies: [ .cooking, .drawing, .reeding, .sport],
    country: "England",
    sity: "London",
    age: 27
)
// вызов методов для отображения инфы
myResumes.countHobbies()
myResumes.display()
myResumes.displayHobbiesInfo()
print(myResumes)
// ПОЛУЧИЛОСЬ!!!


// КОММЕНТАРИЙ:
/*
 1. перечисление 'hobbies':
 - 'CaseItarale' перебирает ВСЕ случаи перечисления
 - 'CaseItarale' == ручное создание массива всех случаев */
let allHobbies: [Hobbies] = [.sport, .cooking, .drawing, .reeding]
// использование массива
for hobby in allHobbies {
    print(hobby.rawValue) // это все авто/заменил 'CaseItarale'
}
/*
2. структура 'Resumes':
 - ее свойства: имя, ник, город
 - 'CustomStringConvertible' - протокол, который требует реализации свойства 'description' - это свойство возвращает строку, которая описывает ЭКЗЕМПЛЯР структуры

- 'description' - вычисляемое СВОЙСТВО, оно формирует строку с инфой о резюме
- '.countHobbies()' - метод, выводит кол-во хобби у человека
- '.display()' - метод, выводит инфу о резюме, включая хобби и их описание на экран
3. создание ЭКЗЕМПЛЯРА резюме и вывод методов:
 - для Джейми Оливера с заданными хобби и др. данными
 - вызов методов:
    '.countHobbies()' - выводит кол-во хобби
      print(myResumes) - выводит краткое описание резюме благодаря реализации протокола 'CustomStringConvertible' */
