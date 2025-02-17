import UIKit

// Repeated FUNCS: Sintax & Logics

func returnMessage(code: Int, message: String) -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}
let myMessage = returnMessage(code: 112, message: "Код сообщения - ")
func changeValues(a: inout String, b: inout String) -> Void {
    let tmp = a
    a = b
    b = tmp
}
var x = "Swift", y = "Pithon"
changeValues(a: &x, b: &y)
print("Измененные значения a - \(x)")

func getCodeDescription(code: Int) -> (Int, String) {
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
getCodeDescription(code: 121)
