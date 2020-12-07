//Homework 2.3
//Преобразование типов. Условные конструкции
//Задача 1
print("Задача 1\n")
var a: Int = Int.random(in: 1...5)
var b: Int = Int.random(in: 1...10)
var c: Int = Int.random(in: 1...5)

let d: Int = Int(b * b - (4 * a * c))

//1 случай = решение с помощью условной конструкции if-else

if d > 0 {
    print("if-else \n\tD = \(d), график скорее всего продолжит направление")
} else if d < 0 {
    print("if-else \n\tD = \(d), график скорее всего поменяет направление")
} else /*if d == 0 */ {
    print("if-else \n\tD = \(d), неопределенная ситуация - нужно ждать")
}

//Доработка. Исправил переменные в camelCase. Была идея придерживаться условия задачи и для нее использовать большие буквы
//Исправил последнее условие, что если d > 0 или d < 0 , то проверка на 0 не обязательна

//2 случай = решение с помощью тернарного оператора (как по мне чтение немного сложнение в подобном ключе

/*
if d != 0 {
    _ = d > 0 ? print("Тернарный оператор \n\tD = \(d), график скорее всего продолжит направление") : print("Тернарный оператор \n\tD = \(d), график скорее всего поменяет направление")
    
    //Здесь произошла автозамена warning. Зачем используется нижнее подчеркивание в Swift - я не знаю.
    
} else {
    print("Тернарный оператор \n\tD = \(d), неопределенная ситуация - нужно ждать")
}
 */

//2 случай, попытка номер №2

_ = d > 0 ? print("Тернарный оператор \n\tD = \(d), график скорее всего продолжит направление") : d < 0 ? print("Тернарный оператор \n\tD = \(d), график скорее всего поменяет направление") : print("Тернарный оператор \n\tD = \(d), неопределенная ситуация - нужно ждать")

//почему-то думал что тернарный оператор используется конкретно для одного условия только с двумя вариантами ответа скажем так
//увидел, что существует подобная реализация. Спасибо большое за подсказку!

//3 случай = решение с помощью конструкции switch-case

switch d {
    case 0:
        print("switch-case \n\tD = \(d), неопределенная ситуация - нужно ждать")
    case 0...:
        print("switch-case \n\tD = \(d), график скорее всего продолжит направление")
    case ..<0:
        print("switch-case \n\tD = \(d), график скорее всего поменяет направление")
    default:
        print("Exception! Warning! Alert!")
}

print("\nЗадача 2\n")

//Задача 2
let age = Int.random(in: 3...120)

let male = Bool.random() // true = Man, false = Woman

/* моя реализация второй задачи

if male {
    print("Ваш возраст = \(age), Ваш пол = Мужской")
} else {
    print("Ваш возраст = \(age), Ваш пол = Женский")
}

switch male {
    case true:
        switch age {
            case 3...17:
                print("Детский контент для мальчиков")
            case 18...66:
                print("Взрослый контент для мужчин")
            case 66...:
                print("Контент для мужчин пожилого возраста")
            default:
                print("Нет подходящего контента")
    }
    case false:
        switch age {
            case 3...17:
                print("Детский контент для девочек")
            case 18...66:
                print("Взрослый контент для женщин")
            case 66...:
                print("Контент для женщин пожилого возраста")
            default:
                print("Нет подходящего контента")
    }
}
 */

// понравился ваш метод решения

print("Age = \(age)")

switch age {
case 3...17:
    print("Детский контент для \(male ? "мальчиков" : "девочек").")
case 18...65:
    print("Взрослый контент для \(male ? "мужчин" : "женщин").")
case 66...:
    print("Контент для \(male ? "мужчин" : "женщин") пожилого возраста.")
default:
    print("Нет подходящего контента.")
}
