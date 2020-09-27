//
//  ScoreboardViewModel.swift
//  ObservedTest
//
//  Created by Robert Maltese on 9/27/20.
//  Copyright © 2020 Robert Maltese. All rights reserved.
//

import Foundation
import SwiftUI

struct ScoreboardViewModel: View {
    @ObservedObject var players = GetPlayerData()

    var body: some View {
        VStack {
            HStack {
                Text("Player Name")
                    .underline()
                    .frame(maxWidth: .infinity)
                    .font(.headline)
                Text("Score")
                    .underline()
                    .frame(maxWidth: .infinity)
                    .font(.headline)
                Text("Playing")
                    .underline()
                    .frame(maxWidth: .infinity)
                    .font(.headline)
            }
            .padding(.top)
            .padding(.bottom)
            .foregroundColor(Color.white)
        
            VStack {
                ForEach(players.data) { playerData in
                    HStack {
                        Text(playerData.name)
                            .frame(maxWidth: .infinity)

                        Text("\(playerData.score)")
                            .frame(maxWidth: .infinity)

                        Text(playerData.playing)
                            .frame(maxWidth: .infinity)

                    }
                    .foregroundColor(Color.white)
                }
            }
        }
    }
}

struct PlayerDetailGrid: View {
    var body: some View {
        HStack {
            Text("Player Name")
                .padding(.horizontal)
                .font(.headline)
            Text("Score")
                .padding(.horizontal)
                .font(.headline)
            Text("Playing")
                .padding(.horizontal)
                .font(.headline)
        }
        .foregroundColor(Color.white)
    }
}
