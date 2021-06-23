//
//  FancyScoreView.swift
//  SwiftUI-Understanding_ObservableObject_1
//
//  Created by Arpit Dixit on 23/06/21.
//

import SwiftUI

struct FancyScoreView: View {
    @Binding var score: Int
    var body: some View {
        VStack {
            Text("\(score)")
                .font(.title)
            Button("Fancy Score") {
                score += 1
            }
            .padding()
        }
        .padding()
        .background(Color.red)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView(score: .constant(0))
    }
}
