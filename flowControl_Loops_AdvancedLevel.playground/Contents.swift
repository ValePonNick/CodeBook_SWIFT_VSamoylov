import UIKit

// 6. flowControl_Loops: Advanced Level
/*  играем в шахматы: есть некоторое кол-во фигур на доске, они расположены на опред. клетках.
 ЗАДАЧА: делать ходы и сообщать об этом в консоль. */
// NB: в качестве координат - кортежи. Используй switch + циклы

// кортеж шахматных фигур
let chessBoardRow = (
    "Rook", "Knight", "Bishop", "Qeen", "King", "Bishop", "Knight", "Rook"
)
// использование 2-мерного МАССИВА для создания шахматной доски
var chessBoard: [[String]] = Array(repeating: Array(repeating: "Empty", count: 8), count: 8)

// функция для вывода шахматной доски
for row in chessBoard {
    print(row)
}
// помечаем клетки шахматной доски
for i in 0...7 {
    for j in 0...7 {
        if (i + j) % 2 == 0 {
            chessBoard[i][j] = "⬜"
        } else {
            chessBoard[i][j] = "⬛"
        }
    }
}

// выводим шахматную доску
print(chessBoardRow)
// NB: код создал шахматную доску 8 на 8 и разместил фигуры белых на 1-ой строке.
// чтобы авто разместить фигуры - используй циклы для итерации по доске и установке фигур в зависимости от позиции:
// используй перечисления для перемещения фигур
enum PieceType {
    case king, qeen, rook, bishop, knight, pawn
}
struct Piece {
    let type: PieceType
    let color: String
}
// реализация логики хода для каждой фигуры
func isValidMove(piece: Piece, from: (Int, Int), to: (Int, Int)) -> Bool {
    switch piece.type {
    case .pawn:
        // логика хода пешки
        return true
    default:
        return false
    }
}
// функция для проверки пересечения с координатой др. фигуры -> сообщать об этом в консоль
@MainActor func isIntersection(from: (Int, Int), to: (Int, Int)) -> Bool {
    // проверяем: занята ли целевая клетка?
    if chessBoard[to.0][to.1] != "⬜" && chessBoard[to.0][to.1] != "⬛" {
        print( "Ход фигуры пересекается с координатой другой фигуры.")
        return true
    }
    return false
}
    // проверяем: пересекается ли ПУТЬ c другими фигурами?
    var dx = 1 // изменение по оси x
    var dy = 1 // изменение по оси y
    // исходные координаты фигуры
    var x = 0
    var y = 0
// если ход попадает на опред. координату -> сообщать в консоль "шах" / "мат".

// если ход поадает на опред. координату -> сделайте фигуру = nil

