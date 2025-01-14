import UIKit

// 6. flowControl_Loops: Advanced Level
/*  играем в шахматы: есть некоторое кол-во фигур на доске, они расположены на опред. клетках.
 ЗАДАЧА: делать ходы и сообщать об этом в консоль. */
// NB: в качестве координат - кортежи. Используй switch + циклы

// кортеж шахматных фигур
let chessBoardRow = (
    "Rook", "Knight", "Bishop", "Qeen", "King", "Bishop", "Knight", "Rook", "Pawn"
)
// использование 2-мерного МАССИВА для создания шахматной доски
var chessboard: [[String]] = Array(repeating: Array(repeating: "Empty", count: 8), count: 8)
// размещение фигур на доске
chessboard[0][0] = "Rook"
chessboard[2][2] = "Knight"
chessboard[0][2] = "Bishop"
chessboard[0][3] =  "Qeen"
chessboard[0][4] = "King"
chessboard[0][5] = "Bishop"
chessboard[0][6] = "Knight"
chessboard[0][7] = "Rook"
chessboard[1][0] = "Pawn"
chessboard[1][1] = "Pawn"
chessboard[1][2] = "Pawn"
chessboard[1][3] = "Pawn"
chessboard[1][4] = "Pawn"
chessboard[1][5] = "Pawn"
chessboard[1][6] = "Pawn"
chessboard[1][7] = "Pawn"
chessboard[7][0] = "Pawn"
chessboard[7][1] = "Pawn"
chessboard[7][2] = "Pawn"
chessboard[7][3] = "Pawn"
chessboard[7][4] = "Pawn"
chessboard[7][5] = "Pawn"
chessboard[7][6] = "Pawn"
chessboard[7][7] = "Pawn"

// функция для вывода шахматной доски
    for row in chessboard {
        print(row)
    }
// помечаем клетки шахматной доски
for i in 0...7 {
    for j in 0...7 {
        if (i + j) % 2 == 0 {
            chessboard[i][j] = "⬜"
        } else {
            chessboard[i][j] = "⬛"
        }
    }
}
// выводим шахматную доску
print(chessBoardRow)
// NB: код создал шахматную доску 8 на 8 и разместил фигуры белых на 1-ой строке.
// чтобы авто разместить фигуры - используй циклы для итерации по доске и установке фигур в зависимости от позиции:

// если ход пересекается с координатой фигуры -> сообщать об этом в консоль

// если ход попадает на опред. координату -> сообщать в консоль "шах" / "мат".

// если ход поадает на опред. координату -> сделайте фигуру = nil

