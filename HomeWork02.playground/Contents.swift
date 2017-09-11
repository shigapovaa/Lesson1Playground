//: Playground - noun: a place where people can play

import UIKit

class Unit {
    let nickname: String
    var skill: Int
    var protection: Int
    var damage: Int
    var health: Int
    var wins: Int
    var lesions: Int
    
    init(nickname: String, skill: Int, protection: Int, damage: Int, health: Int, wins: Int, lesions: Int) {
        self.nickname = nickname
        self.skill = skill
        self.protection = protection
        self.damage = damage
        self.health = health
        self.wins = wins
        self.lesions = lesions
    }
    
    func attack(to enemy: Unit) -> Int {
        let enemyProtection = enemy.protection
        
        // Генерация силы удара от 0 до 31
        damage = Int(arc4random_uniform(31))
        if enemyProtection > 20 {
            if damage % 2 == 1 {
                damage -= 1
            }
            damage = damage / 2
        }
        return damage
    }
}

class Mage: Unit {
    override init(nickname: String, skill: Int, protection: Int, damage: Int, health: Int, wins: Int, lesions: Int) {
        super.init(nickname: nickname, skill: skill, protection: protection, damage: damage, health: health, wins: wins, lesions: lesions)
    }
}

class Knight: Unit {
    override init(nickname: String, skill: Int, protection: Int, damage: Int, health: Int, wins: Int, lesions: Int) {
        super.init(nickname: nickname, skill: skill, protection: protection, damage: damage, health: health, wins: wins, lesions: lesions)
    }
}

class Assassin: Unit {
    override init(nickname: String, skill: Int, protection: Int, damage: Int, health: Int, wins: Int, lesions: Int) {
        super.init(nickname: nickname, skill: skill, protection: protection, damage: damage, health: health, wins: wins, lesions: lesions)
    }
}

class Battlefield {
    var topTable = "Топ 3 самых сильных бойца\n"
    var game: String
    init(game: String) {
        self.game = game
    }
    func beginBattle(with units: [Unit]) -> String {
        var array = units
        var array2 = array
        var game = true
        var sum = 0
        
        while game {
            for i in 0..<(array.count - 2) {
                if i == array.count {
                    array[i].attack(to: array[0])
                    if array[0].damage == 0 {
                        array[0].lesions += 1
                        array2[0] = array[i+1]
                    }
                    sum += 1
                }
                else {
                    array[i].attack(to: array[i+1])
                    if array[i+1].damage == 0 {
                        array[i+1].lesions += 1
                        array2[i+1] = array[i+1]
                        array.remove(at: (i+1))
                    }
                    sum += 1
                }
                if array.count == 1 {
                    game = false
                }
            }
        }
        array[0].wins += 1
        for i in 0..<array2.count {
            if array2[i].nickname == array[0].nickname {
                array2[i] = array[0]
                break
            }
        }
        
        let test = Unit(nickname: "Test", skill: 0, protection: 0, damage: 0, health: 0, wins: 0, lesions: 0)
        var top1 = test
        var top2 = test
        var top3 = test
        for i in 0..<array2.count {
            if (array2[i].wins > top1.wins) || ((array2[i].wins == top1.wins) && (array2[i].lesions > top1.lesions)) {
                top2 = top1
                top1 = array2[i]
            }
            else {
                if (array2[i].wins > top2.wins) || ((array2[i].wins == top2.wins) && (array2[i].lesions > top2.lesions)) {
                    top3 = top2
                    top2 = array2[i]
                }
                else {
                    if (array2[i].wins > top3.wins) || ((array2[i].wins == top3.wins) && (array2[i].lesions > top3.lesions)) {
                        top3 = array2[i]
                    }
                }
            }
        }
        topTable = topTable + "1. \(top1.nickname): \(top1.wins) win(s) \(top1.lesions) lesion(s) \n" + "2. \(top2.nickname): \(top2.wins) win(s) \(top2.lesions) lesion(s) \n" + "3. \(top3.nickname): \(top3.wins) win(s) \(top3.lesions) lesion(s) \n"
        return topTable
    }
}
var players = [Unit]()
players.append(Mage(nickname: "Mag", skill: 40, protection: 20, damage: 0, health: 100, wins: 0, lesions: 4))
players.append(Knight(nickname: "Knight", skill: 30, protection: 10, damage: 0, health: 100, wins: 4, lesions: 4))
players.append(Assassin(nickname: "Assasian", skill: 20, protection: 5, damage: 0, health: 100, wins: 5, lesions: 0))
players.append(Mage(nickname: "Mag2", skill: 10, protection: 20, damage: 0, health: 100, wins: 3, lesions: 2))
var game1 = Battlefield(game: "Добро пожаловать в игру")

var topTable = game1.beginBattle(with: players)



