//
//  TestViewModel.swift
//  ObservedTest
//
//  Created by Robert Maltese on 9/27/20.
//  Copyright © 2020 Robert Maltese. All rights reserved.
//

import SwiftUI

struct TestViewModel: View {
    @ObservedObject var settings = ScoreSetting()
    @ObservedObject var sets = ScoreSetting()
    
    var body: some View {
        VStack {
            HStack {
                    Button(action: {
                        if self.settings.score == 5  {
                            self.settings.score = 0
                            self.sets.total += 1
                        } else {
                            self.settings.score += 1
                        }
                    }
                    ){
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: width, height: height)
                                    .cornerRadius(cornerRadius)
                                Text("Increase Score")
                                    .foregroundColor(Color.white)
                            }
                        }
                    }
                    Button(action: {
                        self.sets.total = 0
                    }) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: width, height: height)
                                    .cornerRadius(cornerRadius)
                                HStack {
                                    Text("Clear Sets")
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                    }
            }
            VStack {
                Text("Your score is : \(settings.score)")
                    .font(.headline)
                    .foregroundColor(Color.white)
                
                Text("Total Sets : \(sets.total)")
                    .font(.headline)
                    .foregroundColor(Color.white)
            }
            .padding(.top)
        }
    }
    //MARK: - Constants
    
    let width: CGFloat = 150
    let height: CGFloat = 50
    let cornerRadius: CGFloat = 10
}


struct TestViewModel_Previews: PreviewProvider {
    static var previews: some View {
        TestViewModel()
    }
}
