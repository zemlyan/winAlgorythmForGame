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

var players: [Player] = []

startTheGame()
showPlayer("Alex")

func test(_ player: String) {
    
    for i in players {
        if i.name == player {
            i.points = i.points + 1
            print(i.points)
        }
    }
}
test("Alex")
