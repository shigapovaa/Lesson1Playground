//: Playground - noun: a place where people can play

import UIKit
class TrimMethod {
    func trim(word: String, with: String) -> String {
        var s = ""
        for i in 0..<word.characters.count {
            if word.index(i) == with.index(0) {
                var j = with.characters.count
                var startIndex = i
                while ((j > 0) && (word.index(i) == with.index(with.characters.count - 1))) {
                    i = i + 1
                    j = j - 1
                }
                if j == 0 {
                    s.splite(word.startIndex.successor(), advance(word.startIndex, startIndex))
                    s.splite(word.endIndex.successor, advance(word.endIndex, i))
                }
            }
        }
        return s
    }
}

let test = TrimMethod()
var d = test.trim(word: "Hello world", with: "o")