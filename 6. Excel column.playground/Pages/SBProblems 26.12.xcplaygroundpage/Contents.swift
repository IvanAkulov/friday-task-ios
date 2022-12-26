import Foundation

/*
 Given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.
 
 https://leetcode.com/problems/excel-sheet-column-title/
 */

/*
 Решение
 Можно заметить, что тут нам нужно привести нашу цифру в десятичной системе - в другую систему с базой 26.
 Далее каждую цифру привести к соответсвующей букве A...Z
 Для этого в while делим число на 26 и записываем остаток от деления.
 Что бы преобразовать цифру в букву - можно или сделать словарь из 26 букв-цифр или, что намного проще, посмотреть в таблицу юникод и заметить, что код "А" = 65. Те прибавляя 65 к цифре и преобразовав это через
 UnicodeScalar в String мы получим то, что нужно.
 
 */

func convertToTitle(_ columnNumber: Int) -> String {
    var result = ""
    var n = columnNumber
    
    while n > 0 {
        result = String(UnicodeScalar((n - 1) % 26 + 65)!) + result
        n = (n - 1) / 26
    }
    
    return result
}

convertToTitle(701)

