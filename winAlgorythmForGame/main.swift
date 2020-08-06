//
//  main.swift
//  winAlgorythmForGame
//
//  Created by Oleksii Yelnykov on 01.08.2020.
//  Copyright © 2020 Oleksii Yelnykov. All rights reserved.
//

import Foundation

let xpWin = 10
let xpLose = 1
let pointsWin = 100

var playersCount = 0
var totalGames = 0

var winner = Player()
var loser = Player()
var firstMoveIndex = 0

var players: [Player] = []
startTheGame()
playGame()
showPlayer("Alex")
showPlayer("Lina")

