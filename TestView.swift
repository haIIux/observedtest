//
//  TestView.swift
//  ObservedTest
//
//  Created by Robert Maltese on 9/27/20.
//  Copyright © 2020 Robert Maltese. All rights reserved.
//

import SwiftUI

// Score is located in the TestModel in which is a @Published var, you're then using the @ObservedObject to set the var which will call the @Published var.

struct TestView: View {    
    var body: some View {
        VStack {
            VStack {
                Text("Score Game!")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            TestViewModel()
            ScoreboardViewModel()
            
       }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}






