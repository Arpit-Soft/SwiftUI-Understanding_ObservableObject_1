//
//  ContentView.swift
//  SwiftUI-Understanding_ObservableObject_1
//
//  Created by Arpit Dixit on 23/06/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userSettings = UserSettings()
    var body: some View {
        VStack {
            Text("\(userSettings.score)")
                .padding()
                .font(.largeTitle)
            Button("Change Score") {
                userSettings.score += 1
            }
            .padding(10)
            .font(.headline)
            .foregroundColor(.white)
            .background(Color.blue)
            FancyScoreView(score: $userSettings.score)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
