//
//  TestModel.swift
//  ObservedTest
//
//  Created by Robert Maltese on 9/27/20.
//  Copyright © 2020 Robert Maltese. All rights reserved.
//

import Foundation
import Combine


class ScoreSetting: ObservableObject {
    @Published var score = 0
    @Published var total = 0
}

class GetPlayerData: ObservableObject {
    @Published var data = GameHistoryData
}

struct GameHistory: Identifiable {
     var id = UUID()
    var name: String
    var score: Int
    var playing: String
}


var GameHistoryData = [
    GameHistory(name: "Bob", score: 12, playing: "Not Playing"),
    GameHistory(name: "Sam", score: 6, playing: "Not Playing"),
    GameHistory(name: "Steve", score: 14, playing: "Playing")
]
