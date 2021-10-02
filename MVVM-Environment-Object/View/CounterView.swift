//
//  ContentView.swift
//  MVVM-Environment-Object
//
//  Created by Binaya on 02/10/2021.
//

import SwiftUI

struct CounterView: View {
    
    @StateObject var scoreVM = ScoreViewModel()

    var body: some View {
        NavigationView {
            VStack {
                Text("Score: \(scoreVM.scoreValue)")
                    .font(.system(size: 50))
                    .padding()
                HStack {
                    ActionButton(buttonImageName: "plus") {
                        scoreVM.increaseScore()
                    }
                    .padding()
                    NavigationLink(
                        destination: ScoreView(),
                        label: {
                            Text("Go to score view")
                                .font(.system(size: 25))
                        })
                        .padding()
                    ActionButton(buttonImageName: "minus.circle") {
                        scoreVM.decreaseScore()
                    }
                    .padding()
                }
            }
        }
        .environmentObject(scoreVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
