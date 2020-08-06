//
//  methods.swift
//  winAlgorythmForGame
//
//  Created by Oleksii Yelnykov on 02.08.2020.
//  Copyright © 2020 Oleksii Yelnykov. All rights reserved.
//

import Foundation

// начинаем игру с того, что создаем игроков по кол-ву имен в списке
func startTheGame() {
    for i in playersNameArray {
        let name = i
        let i = Player()
        i.name = name
        players.append(i)
        playersCount = playersCount + 1
    }
    print(players.count, " players was created")
    print()
    print()
}


func playGame() {
    for first in 0...playersCount-1 {
        for second in 0...playersCount-1 {
            let firstPlayer = players[first]
            let secondPlayer = players[second]
            if (firstPlayer.name != secondPlayer.name) && isEnoughMoneyForBid(secondPlayer) && areYouOnline(secondPlayer){
                totalGames = totalGames + 1
//                print("!!!! ", totalGames, " game")
                    whoWin(firstPlayer, secondPlayer)
                    successResultsWrite()
                
                    if firstPlayer.name == winner.name {
                        players[first] = winner
                        players[second] = loser
                    } else {
                        players[first] = loser
                        players[second] = winner
                    }
            } else {
//                if !isEnoughMoneyForBid(secondPlayer){
//                    print("not enough money")
//                }
//                if !areYouOnline(secondPlayer) {
//                    print("offline")
//                }
                
            }
        }
    }
}

// проверяет доступность игрока
func areYouOnline(_ player: Player) -> Bool {
    return player.available()
}

// проверяет хватает ли денег на ставку
func isEnoughMoneyForBid(_ player: Player) -> Bool {
    if player.points < 100 {
        player.points = player.points + 10
        return false
    } else {
        return true
    }
}

// ищем победителя игры
func whoWin(_ player1: Player, _ player2: Player){
    
    // вычисляем коэфициент первого хода. 0 - ходит первый игрок.
    var firstMoveCoef = 0
    if player1.firstTurns == player2.firstTurns {
        firstMoveCoef = Int(arc4random_uniform(2))
    } else if player1.firstTurns > player2.firstTurns {
        firstMoveCoef = 1
    } else {
        firstMoveCoef = 0
    }
    
    firstMoveIndex = firstMoveCoef
    
    // вычисляем коэфициент опыта
    let coefitient: Int = (player1.xp - player2.xp)/10
    
    // вычисляем победителя
    if (Int(arc4random_uniform(100)) + coefitient + (1 - firstMoveCoef)) > (Int(arc4random_uniform(100)) + (0 + firstMoveCoef)) {
        winner = player1
        loser = player2
//        print("(", winner.totalplayedGames, "), (", loser.totalplayedGames, ")")
    } else {
        winner = player2
        loser = player1
//        print("(", winner.totalplayedGames, "), (", loser.totalplayedGames, ")")
    }
}


// записываем результаты при удачной игре
func successResultsWrite() {
    let point = 1 - firstMoveIndex
    
    // обнуляем первые и вторые ходы
    if firstMoveIndex == 0 {
        winner.secondTurns = firstMoveIndex
        loser.firstTurns = firstMoveIndex
    } else {
        winner.firstTurns = point
        loser.secondTurns = point
    }
    
    // записываем результаты победителя
    winner.points = winner.points + pointsWin
    winner.firstTurns = winner.firstTurns + point
    winner.secondTurns = winner.secondTurns + firstMoveIndex
    winner.firstTurnsTotal = winner.firstTurnsTotal + point
    winner.secondTurnsTotal = winner.secondTurnsTotal + firstMoveIndex
    winner.xp = winner.xp + xpWin
    winner.wins = winner.wins + 1
    winner.totalplayedGames = winner.totalplayedGames + 1
    if winner.firstTurns > winner.biggestFirstMovesCountEver {
        winner.biggestFirstMovesCountEver = winner.firstTurns
    }
    
    // записываем результаты проигравшего
    loser.points = loser.points - pointsWin
    loser.firstTurns = loser.firstTurns + firstMoveIndex
    loser.secondTurns = loser.secondTurns + point
    loser.firstTurnsTotal = loser.firstTurnsTotal + firstMoveIndex
    loser.secondTurnsTotal = loser.secondTurnsTotal + point
    loser.xp = loser.xp + xpLose
    loser.totalplayedGames = loser.totalplayedGames + 1
    if loser.firstTurns > loser.biggestFirstMovesCountEver {
        loser.biggestFirstMovesCountEver = loser.firstTurns
    }

    // проигравший решает остаться в игре или выйти
    loser.online = loser.available()
    
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
    print("Games played total: ", playerForShow.totalplayedGames)
    print()
    print()
}
