//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//:
//1
//Создание массива
var array1: [Int] = [6, 8, 12, 1, 7, 0, 5, 33, 9, 13]
//Сортировка пузырьком
for i in 0..<array1.count {
    for j in 0..<(array1.count - i - 1) {
        if array1[j] > array1[j+1] {
            var c = 0
            c = array1[j]
            array1[j] = array1[j+1]
            array1[j+1] = c
        }
    }
}
// Вывод элементов массива
for element in array1 {
    print("\(element)")
}

//2
class Robot {
    var name: String
    var function: String
    init(name: String, function: String) {
        self.name = name
        self.function = function
    }
    
    func sayName() -> String {
        return name
    }
    
    func sayFunction() -> String {
        return function
    }
}
var test = Robot(name: "I1", function: "Run")
print(test.sayName())
print(test.sayFunction())

//Наследование
class RobotSinger: Robot {
    var songsName: String
    var song: String
    init(song: String, songsName: String, name: String, function: String) {
        self.song = song
        self.songsName = songsName
        super.init(name: name, function: function)
    }

    // Инкапсуляция
    private func saySongsName() -> String {
        return songsName
    }
    
    // Полиморфизм
    func singSong() -> String {
        song += self.saySongsName()
        return song
    }
    
    override func sayName() -> String {
        return name
    }
    
    override func sayFunction() -> String {
        return function
    }
    
}
var test2 = RobotSinger(song: " Lalalalala", songsName: " - Lalala song", name: "I2", function: "Sing song")
print("Name: " + test2.sayName() + ", function: " + test2.sayFunction() + ", song: " + test2.singSong())

//3
//Структура
struct Pepperoni {
    let status: Bool
    init(status: Bool) {
        self.status = status
    }
    
    func isThePizzaReady() -> Bool {
        return status
    }
}
let pizza = Pepperoni(status: false)
if pizza.isThePizzaReady() == true {
    print("Пицца готова")
}
else {
    print("Пицца еще не готова")
}

