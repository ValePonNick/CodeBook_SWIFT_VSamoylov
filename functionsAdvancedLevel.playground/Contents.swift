import UIKit

/* 1. Фукция принимает ТРИ массива String. ЗАДАЧА: сложить их вместе,
преобразовать в тип Int и подсчитать сумму. Распечатай рез-т в консоль. */
func addArrays(_ array1: [String], _ array2: [String], _ array3: [String]) -> [String] {
    return array1 + array2 + array3
}
// пример использования функции, объед-ей ТРИ массива строк:
let array1 = ["solt", "pepper", "paprika"]
let array2 = ["sugar", "vanilla", "cinnamon"]
let array3 = ["starch", "dill", "parsley"]
let modifyArray = addArrays(array1, array2, array3)
print(modifyArray)

let stringArray = ["123", "456", "789", "abc", "milk", "12"]
let intArray = stringArray.compactMap { Int($0) }
print(intArray)
/* NB: в этом примере строка 'abc' + строка  'milk' НЕ преобразуетя в число
 и потому обе ИСКЛ-НЫ из результатироующего массива */

/* 2. Создай функцию, которая принимает строку-рассказ без пробелов
и знаков препинаний, все с маленькой буквы и на латинице. */
let stringInRussian = "Только на огонь был поставлен большой кофейникб только гномы, покончив с кексами, перешли на ячменные лепешки с маслом, как вдруг раздался ... не звонок, а громкий стук. Целый град ударов обрушился на красивую зеленую дверь Бильбо Бэггинсаю Кто-то молотил по ней палкой!"
let stringInEnglish = "abigjugofcoffeehadjustbeensetinthehearththeseedcakesweregoneandthedwarveswerestartingonaroundofbutteredsconeswhentherecamealoudknocknotaringbutahardrattatonthehobbitsbeautifulgreendoorsomebodywasbangingwithastick!"
func getString(_ inputString: String) {
    print("Введенная строка: \(inputString)")
}
// пример использования
getString("abigjugofcoffeehadjustbeensetinthehearththeseedcakesweregoneandthedwarveswerestartingonaroundofbutteredsconeswhentherecamealoudknocknotaringbutahardrattatonthehobbitsbeautifulgreendoorsomebodywasbangingwithastick!")

/* 3. Напишите код, который добавляет знаки препинания в строку-рассказ,
 переносит каждое новое предложение на новую строку. Добавьте заглавные буквы. */
func splitWords(_ text: String) -> [String] {
    let dict = ["coffee", "seed", "cakes", "dwarves", "buttered", "scones", "starting", "hobbit", "s", "beautiful", "somebody", "ret-tat", "not", "banging", "ring", "stick", "big", "jug", "had", "just", "been", "set", "hearth", "the", "were", "gone", "in", "round", "when", "on", "round", "a", "of", "and", "on", "when", "came", "a", "loud", "knock", "not", "there", "but", "green", "door", "was", "with", "stick", "hard", "rat", "tat"]
    var getString: [String] = []
    var remainingText = text
    while !remainingText.isEmpty {
        var found = false
        for word in dict.sorted(by: {$0.count > $1.count }) {
            if remainingText.hasPrefix(word) {
                getString.append(word)
                remainingText = String(remainingText.dropFirst(word.count))
                found = true
                break
            }
        }
        if !found {
            // если слово не найдено, добавь его как неизвестное
            getString.append(String(remainingText.first!))
            remainingText = String(remainingText.dropFirst())
        }
    }
    return getString
    
}
// пример использовния
let texts = "abigjugofcoffeehadjustbeensetinthehearththeseedcakesweregoneandthedwarveswerestartingonaroundofbutteredsconeswhentherecamealoudknocknotaringbutahardrattatonthehobbitsbeautifulgreendoorsomebodywasbangingwithastick"
let getString = splitWords(texts)
print(getString)

// добавить запятые в строку - рассказ после опред. слов
func addPunctuation(_ text: String, wordsToComma: [String]) -> String {
    let words = text.components(separatedBy: " ")
    var result = " "
    
    for (index, word) in words.enumerated() {
        result += word
        if wordsToComma.contains(word.lowercased()) && index < words.count - 1 {
            result += ", "
        } else if index < words.count - 1 {
            result += " "
        }
    }
    if !result.isEmpty && !result.hasSuffix(".") {
        result += "."
    }
    return result
}
// пример использования

let resultString = getString.joined(separator: " ")

let wordsToComma = ["hearth", "gone", "scones", "ring"]
let textWithPunctuation = addPunctuation(resultString, wordsToComma: wordsToComma)
print(textWithPunctuation)
// добавить точки в строку - рассказ после опред. слов
func addPunctuation(_ text: String, wordsToPeriod: [String]) -> String {
    let words = text.components(separatedBy: " ")
    var result = " "
    
    for (index, word) in words.enumerated() {
        result += word
        if wordsToPeriod.contains(word.lowercased()) && index < words.count - 1 {
            result += ". "
        } else if index < words.count - 1 {
            result += " "
        }
    }
    if !result.isEmpty && !result.hasSuffix(".") {
        result += "."
    }
    return result
}
// пример использования
let wordsToPeriod = ["knock", "door", "stick"]
let textWithPunct = addPunctuation(resultString, wordsToPeriod: wordsToPeriod)
print(textWithPunct)
// код от perplexity не сработал и я подправила! УРА! получилось! Кто молодец - я молодец!
