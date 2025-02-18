import UIKit

// Repeated FUNCS: Sintax & Logics - «любой код мечтает стать функцией»

/*
 •    группирует код в единый контейнер = «черный ящик»,
 •    имеет собственное ИМЯ => м.б. многократно вызвана с возможностью передачи аргументов,
 •    создает отдельную ОБЛАСТЬ видимости внутри себя -> все созданные в ТЕЛЕ функции параметры НЕдоступны извне,
 •    м. принимать входные параметры,
 •    м. возвращать значение как результат исполнения сгруппированного в ней кода,
 •    имеет собственный функциональный ТИП данных,
 •    м.б. записана в параметр - let / var - и в таком виде передана. */
/* SINTAX:
ОБЪЯВЛЕНИЕ функции:
func имяФункции (входные_параметры)-> ТипВозвращаемогоЗначения {
// тело функции
} */

func returnMessage(code: Int, message: String) -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}
func myFirstFunc(a: Int, b: String) { // входные параметры a, b
    
}
let myFunction = myFirstFunc(a: 21, b: "letter") // аргументы a, b

// Тип возвращаемого значения: любой фундамент. тип / тип массива / тип кортежа / др.
func myFirstFunc(a: Int, b: String) -> String {…}
func myFirstFunc(a: Int, b: String) -> [(String, Int)?] {…}

// Если функция НЕ должна возвращать значения:

// 1.    с помощью пустых скобок
myFirstFunc(a: Int, b: String)  -> ()
// 2.    НЕ указывать ТИП вовсе
func myFirstFunction(a: Int, b: String) {
    let myMessage = returnMessage(code: 112, message: "Код сообщения - ")
    func changeValues(a: inout String, b: inout String) -> Void {
        let tmp = a
        a = b
        b = tmp
    }
    var x = "Swift", y = "Pithon"
    changeValues(a: &x, b: &y)
    print("Измененные значения a - \(x)")
    
    func getCodeDescriptionFromCode(_ code: Int) -> (Int, String) {
        let description: String
        switch code {
        case 1...100:
            description = "Error"
        case 101...200:
            description = "Correct"
        default:
            description = "Uncnoun"
        }
        return (code, description)
    }
    getCodeDescriptionFromCode(121)
    
    let tuple: (Double, Double) = (x: 0, y: 0)
    let tuple1: (Double, Double) = (x: 5, y: 5)
    let tuple2: (Double, Double) = (x: -5, y: -5)
    
    let arrayCoords = [tuple, tuple1, tuple2]
    let arrayCoordinates: [(Double, Double)] = [(x: 0, y: 0), (x: 0, y: 0), (x: 5, y: 5), (x: 5, y: 5), (x: -5, y: -5), (x: -5, y: -5)]
    
    let dict: [String: (Double, Double)] = ["point1": arrayCoordinates[0], "point2": arrayCoordinates[1], "point3": arrayCoordinates[2]]
    print(dict["point1"])
    
    /* Logics:
     тело функции содержит ВЕСЬ исполняемый код  - он внутри {…} – тело функции содержит в себе ВСЮ ЛОГИКУ работы. */
    func myFirstFunc(a: Int, b: String) -> String {
        let word = "Swift"
        return String(a) + b + word
    }
    /* NB:
     1.    если функция возвращает значение – в теле д.б. оператор return за которым следует возвращаемое значение.
     2.    после выполнения функция вернет сформированное значение и завершит работу
     3.    если тело функции = ОДНО выражение  -> оператор return м.б. опущен
     4.    сколько return? произвольно, но при достижении ПЕРВОГО return работа функции завершена.
     5.    процесс обращения к уже ОБЪЯВЛЕННОЙ функции называется ВЫЗОВОМ функции
     6.    NB: при вызове функции укажи параметры, а внутри нее – аргументы */
    func printMessage() {
        print(“Сообщение принято”)
    }
    printMessage()    // вызываем функцию по ее имени
    
    // ВХОДНЫЕ ПАРАМЕТРЫ И ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ
    
    func sumTwoInt(a:Int, b:Int) { // два входных параметра типа Int – a и b
        print("Результат операции - \(a + b)")
    }
    sumTwoInt(a: 12, b: 21)     // консоль 33
    
    // Внешние ИМЕНА входных параметров
    func sumTwoInt(num1 a:Int, num2 b:Int) { // два входных параметра типа Int – a и b
        print("Результат операции – \(a + b)")
    }
    sumTwoInt(num1: 12, num2: 21) // название аргумента ОСМЫСЛЕННО + ПОНЯТНО
    // НО можно и так:
    func sumTwoInts(_ a:Int, _ b:Int) { // два входных параметра типа Int – a и b
        print("Результат операции – \(a + b)")
    }
    sumTwoInts(12, 21)    // можно имя параметра НЕ указывать
    
    // ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ:
    
    func summaTwoInt(_ a:Int, _ b:Int) -> Int {
        let result = a + b
        print("Результат операции – \(result)")
        return result
    }
    var result = summaTwoInt(12, 21) //     Результат операции – 33
    /* NB:
     1. в ТЕЛЕ функции объявлена константа result
     2. после функции – переменная с таким же именем –
     3. это два РАЗЛИЧНЫХ и Независимых параметра (почему параметра?)
     4. все, что объявляется в ТЕЛЕ функции – ЛОКАЛЬНО и УНИЧТОЖАЕТСЯ после завершения ее работы
     5. Т.О. в ТЕЛЕ функции константа используется для вывода инфы на консоль совместно с оператором return
     6. а ВНЕ функции в переменной result сохрани возвращенное функцией значение
     
     ИЗМЕНЯЕМЫЕ КОПИИ входных параметров
     
     - ВСЕ входные параметры функций – КОНСТАНТЫ
     - чтобы ИЗМЕНИТЬ переданное входное значение ВНУТРИ функции – д.б. создана НОВАЯ переменная и ей присвоено переданное значение */
    func returnMess(code:Int, message: String) -> String {
        var mutableMessage = message
        mutableMessage += String(code)
        return mutableMessage
    }
    let myMess = returnMess(code:12, message: "Код сообщения – ")     // Код сообщения – 112
    /* Comments:
     1.    функция получает два входных значения (code, message)
     2.    в ее теле создается измененная КОПИЯ message
     3.    и эта измененная КОПИЯ возвращается
     
     СКВОЗНЫЕ ПАРАМЕТРЫ
     
     NB: чтобы изменять параметры с сохранением измененных ВНУТРИ функции значений ПОСЛЕ окончания ее работы – используй сквозные параметры.
     1.    укажи модификатор inout перед описанием типа входного параметра
     2.    сквозной параметр ‘a: inout Int’ передается в функцию, изменяется в ней и сохраняет свое значение при завершении работы функции, ЗАМЕНЯЯ собой исходное значение
     3.    при вызове функции ПЕРЕД передаваемым значением аргумента поставь символ «амперсанд» (&) – он укажет на то, что аргумент передается ПО ССЫЛКЕ */
    
    func changeValue(a: inout String, b: inout String) -> Void {
        let tmp = a
        a = b
        b = tmp
    }
    var x = “Swift”, y = “Pithon”
    changeValue(&x, &y) //
    print(“Измененное значение a - \(x)”)     // Измененное значение a – Pithon
    
    // ФУНКЦИЯ в качестве сквозного параметра
    // используй ВОЗВРащаемое некоторой функцией значение в качестве значения ВХОДНОГО параметра другой функции.
    // используй func в качестве значения
    print(returnMessage(code: 400, message: “Сервер недоступен. Код сообщения – “))     // Сервер недоступен. Код сообщения – 400
    /* Comments:
     1.    используй РАНЕЕ объявленную функцию returnMessage(code:, message:) , возвращающую значение типа String
     
     Входной параметр с ПЕРЕМЕННЫМ числом значений – т.н. вариативный тип
     ЗАДАЧА: удаленный сервер на КАЖДЫЙ запрос отправляет несколько ответов. Каждый ответ – это целое число, но их количество – м.б. различным. Напиши функцию, которая принимает ВСЕ полученные ответы и выводит их на консоль. */
    func printRequestString(codes: Int...) -> Void {
        var codesString = ""
        for code in codes {
            codesString += String(code) + ""
        }
        print("Получены ответы - \( codesString)")
    }
    printRequestString(codes: 100, 200, 300)
    printRequestString(codes: 777, 222, 303)
    /* Comments:
     1.    входной параметр codes м. содержать произвольное кол-во значений указанного типа
     2.    внутри функции он трактуется как Sequence / последовательность => его можно обработать с помощью конструкции for-in
     3.    у одной функции м.б. только ОДИН вариативный параметр – д.б. в КОНЦЕ списка входных параметров
     
     КОРТЕЖ в качестве возвращаемого значения */
    func getCodeStringDescription(code: Int) -> (Int, String) {
        let description: String
        switch code {
        case 1...100:
            description = "Error"
        case 101...200:
            description = "Correct"
        default:
            description = "Unknown"
            getCodeStringDescription(code: 121)     // 121, Correct
        }
/* Comments:
1.    тип возвращаемого значения функции – тип кортежа, содержащего два значения: код и его описание
2.    улучшим функцию -укажем название элементов ПРЯМО в типе возвращаемых функцией значений
3.    полученное в ходе работы функции значение сохраняется в константе request, у которой появляются свойства code и description – что соответствует именам элементов возвращаемого кортежа. */
            
func getCodeStringDescription(code: Int) -> (code: Int, description: String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
        return (code, description)
}
let request = getCodeStringDescription(code: 21)
    request.description    // Error
    request.code    // 21
            
// Значение по умолчанию для ВХОДНОГО параметра
            
func returnMessage(code: Int, message: String = "Код – ") -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}
returnMessage(code: 300)     // “Код - 300”
/* Comments:
1.    при вызове returnMessage(code: message:) НЕ передается значение для параметра     ‘message’.
2.    Это стало возможно из-за установки значения по умолчанию “Код -” в списке ВХОДНЫХ параметров.
3.    Тело функции состоит из ОДНОГО выражения => можно УБРАТЬ оператор return.
4.    см. ОПТИмальный вариант данной функции:
5.    функция, которая принимает ОДИН параметр – это замечательно! */
func returnMessages(code: Int, message: String = "Код – ") -> String {
    message + String(code)
}
returnMessages(code: 300)     // “Код - 300”
            
// ФУНКЦИОНАЛЬНЫЙ ТИП – любая функция имеет свой функциональный ТИП данных
            
// Простой функциональный тип        ()
// функция с типом ()  НЕ имеет ни входных, ни выходных параметров
func printErrorMessage() {
    print("Произошла ошибка")
}
            /* в () всегда описываются ТИПЫ данных входных параметров, а после стрелки указывается тип данных выходного значения.
             - если функция принимает на вход МАССИВ целочисленных значений, а возвращает опциональное строковое значение, то ее тип данных выглядит так: ([Int]) -> String?
             - в левой части функционального типа указаны типы входных параметров, в правой – тип выходного значения. */
            
// Сложный функциональный тип
            (() -> ()).self     // функция, возвращающая другую функцию
            ((Int) -> (String) -> Bool).self      // функция, принимает на вход значение типа String и возвращает значение типа Bool
        ((Int, (Int)) -> Bool).self  // функция, принимает на вход значение типа Int и другую функцию, а возвращает логическое значение. Функция типа (Int) -> Void) принимает целочисленное значение, но не возвращает ничего.
            
// Функция в качестве входного и возвращаемого значений
            
// Возвращаемое значение функционального типа
            
// функция вывода текста на консоль
func printText() {
    print("Функция вызвана")
}
// функция, которая возвращает функцию
func returnPrintTextFunction() -> () {
    return printText
}
print("шаг 1")
let newFunctionInLet: () = returnPrintTextFunction()
print("шаг 2")
newFunctionInLet
print("шаг 3")
