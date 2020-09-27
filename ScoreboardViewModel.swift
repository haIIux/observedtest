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
        
            VStack {
                ForEach(players.data) { playerData in
                    HStack {
                        Text(playerData.name)
                        Text("\(playerData.score)")
                        Text(playerData.playing)
                    }
                    .frame(minWidth: 350)
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

struct ScoreboardViewModel_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
