//
//  Player.swift
//  winAlgorythmForGame
//
//  Created by Oleksii Yelnykov on 01.08.2020.
//  Copyright © 2020 Oleksii Yelnykov. All rights reserved.
//

import Foundation

class Player {
    
    var name: String
    var points: Int                     // если меньше 100 - каждый раз прибавляется 50. победитель забиает ставку. проигравший теряет
    var firstTurns: Int                 // чтобы было видно сколько раз игрок сделал первый ход
    var secondTurns: Int                // чтобы было видно сколько раз игрок пропустил первый ход
    var firstTurnsTotal: Int            // сколько игрок сделал первых ходов за всю игру
    var secondTurnsTotal: Int           // сколько игрок сделал вторых ходов за всю игру
    var online: Bool                    // чтобы пропускать тех, кто не в сети. возможность сильно разнообразить результаты
    var xp: Int                         // проигравший получает 1 очко. победивший - 10.
    var biggestFirstMovesCountEver: Int // наибольшее кол-во первых ходов, сделанных подряд, за всю игру
    var wins: Int                       // всего побед
    var totalplayedGames: Int           // всего игр
    
    init () {
        name = ""
        points = 100
        firstTurns = 0
        secondTurns = 0
        firstTurnsTotal = 0
        secondTurnsTotal = 0
        online = false
        xp = 0
        biggestFirstMovesCountEver = 0
        wins = 0
        totalplayedGames = 0
    }
    
    func available() {
        online = Bool.random()
    }
    
}
