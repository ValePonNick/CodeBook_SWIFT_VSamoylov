import UIKit

// 10. CLASSES && STRUCTS: классы и структуры

// 1. Напиши простые классы с наследованием  и без

/*
 2. Напиши консольное приложение: в нем создать класс 'House' и в нем несколько свойств - 'width', 'height', и несколько методов - 'build'(вывлдит на экран ширину * высоту), 'getWidth' и 'getHeight' выводят на экран соотв-но ширину и высоту. */

/*
 3. Напиши класс:
- в нем метод, который будет принимать букву(одну, м.б. типа string, просто будете передавать ему одну букву) и возвращать все имена, которые начинаются на эту букву.
 напр.: А - Алексей, Александр, Артем, Антон и пр. Внутри метода / полем класса (как удобно) задайте массив строк, в котором прописаны имена - их просто захардкодить т.е. не подгружаем откуда-то. Метод д.б. вернуть отфильтрованный массив с именами.
  - написать метод, который будет принимать массив строк как аргумент и выводить их всех на консоль каждое имя с новой строки. Этим методом распечатать на консоль то, что получилось отфильтровать. */
/*
 4. напиши класс, который формирует массив учеников, сортирует и считает кол-во этих учеников. Если учеников >  30, то выведи сообщение 'в школе нет мест'.
 */
// 5. Создай 5 - 10 своих структур.

// 6. создай список покупок! Код пишет продукты в массив. Если вызываем опр. продукт -> в консоли пиши типа "Мед - куплено!"

// это КЛАСС БЕЗ наследования

class Writers {
    var name: String = ""
    var country: String = ""
    var nickname: String = ""
    var mainBook: String = ""
}

var writer = Writers()

writer.name = "J.R.R. Tolkien"
writer.country = "England"
writer.nickname = "J.R.R."
writer.mainBook = "Hobbit"
print("\(writer.name) was born in \(writer.country). He is an author of the variety of books, but most famoius - \(writer.mainBook).")

writer.name = "R.L. Stivenson"
writer.country = "England"
writer.nickname = "R.L."
writer.mainBook = "Treasure island"
print("\(writer.name) was born in \(writer.country). He is an author of the variety of books, but most famoius - \(writer.mainBook).")
// сделала САМА и НИКУДА ни разу НЕ ПОДСМотрела!!!

