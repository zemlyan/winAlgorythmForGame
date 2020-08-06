//
//  methods.swift
//  winAlgorythmForGame
//
//  Created by Oleksii Yelnykov on 02.08.2020.
//  Copyright © 2020 Oleksii Yelnykov. All rights reserved.
//

import Foundation

// проверяет доступность игрока
func areYouOnline(_ player: Player) -> Bool {
    return player.online
}

// проверяет хватает ли денег на ставку
func isEnoughMoneyForBid(_ player: Player) -> Bool {
    if player.points <= 100 {
        player.points = player.points + 10
        return false
    } else {
        return true
    }
}

// ищем победителя игры
func whoWin(_ player1: Player, _ player2: Player) -> (Player, Player, Int) {
    
    // вычисляем коэфициент первого хода. 0 - ходит первый игрок.
    var firstMoveCoef = 0
    if player1.firstTurns == player2.firstTurns {
        firstMoveCoef = Int(arc4random_uniform(2))
    } else if player1.firstTurns > player2.firstTurns {
        firstMoveCoef = 1
    } else {
        firstMoveCoef = 0
    }
    
    // вычисляем коэфициент опыта
    let coefitient: Int = (player1.xp - player2.xp)/10
    
    // вычисляем победителя
    if (Int(arc4random_uniform(100)) + coefitient + (1 - firstMoveCoef)) > (Int(arc4random_uniform(100)) + (0 + firstMoveCoef)) {
        return (player1, player2, firstMoveCoef)
    } else {
        return (player2, player1, firstMoveCoef)
    }
}


// записываем результаты при удачной игре
func successResultsWrite(_ player1: Player, _ player2: Player, _ firstMove: Int
    ) {
    let point = 1 - firstMove
    
    // обнуляем первые и вторые ходы
    if firstMove == 0 {
        player1.secondTurns = firstMove
        player2.firstTurns = firstMove
    } else {
        player1.firstTurns = point
        player2.secondTurns = point
    }
    
    // записываем результаты первого игрока
    player1.points = player1.points + pointsWin
    player1.firstTurns = player1.firstTurns + point
    player1.secondTurns = player1.secondTurns + firstMove
    player1.firstTurnsTotal = player1.firstTurnsTotal + point
    player1.secondTurnsTotal = player1.secondTurnsTotal + firstMove
    player1.xp = player1.xp + xpWin
    player1.wins = player1.wins + 1
    player1.totalplayedGames = player1.totalplayedGames + 1
    if player1.firstTurns > player1.biggestFirstMovesCountEver {
        player1.biggestFirstMovesCountEver = player1.firstTurns
    }
    
    // записываем результаты второго игрока
    player2.points = player2.points - pointsWin
    player2.firstTurns = player2.firstTurns + firstMove
    player2.secondTurns = player2.secondTurns + point
    player2.firstTurnsTotal = player2.firstTurnsTotal + firstMove
    player2.secondTurnsTotal = player2.secondTurnsTotal + point
    player2.xp = player2.xp + xpLose
    player1.totalplayedGames = player1.totalplayedGames + 1
    if player1.firstTurns > player1.biggestFirstMovesCountEver {
        player1.biggestFirstMovesCountEver = player1.firstTurns
    }

    // второй игрок решает остаться в игре или выйти
    player2.available()
}

// начинаем игру с того, что создаем игроков по кол-ву имен в списке
func startTheGame() {
    for i in playersNameArray {
        let name = i
        let i = Player()
        i.name = name
        players.append(i)
    }
    print(players.count, " players was created")
}

//вывод статистики игрока на экран
func showPlayer(_ player: String) {
    var playerForShow: Player = Player()
    
    for i in players {
        if i.name == player {
        playerForShow = i
        }
    }
    
    print(playerForShow.name)
    print("Available: ", playerForShow.online ? "online" : "offline")
    print("Points: ", playerForShow.points)
    print("Expirience: ", playerForShow.xp)
    print()
    print("First moves total: ", playerForShow.firstTurnsTotal)
    print("The biggest count of first moves in a row: ", playerForShow.biggestFirstMovesCountEver)
    print()
    print()
}
