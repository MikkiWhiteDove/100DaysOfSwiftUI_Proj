//
//  ScopewWithAnAlert.swift
//  Day20-22
//
//  Created by Mishana on 12.02.2022.
//

import SwiftUI

struct ScopewWithAnAlert: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var countries = ["Algire", "Barbados", "Barselona", "Estonia"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.1),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.7)
            ], center: .top, startRadius: 200, endRadius: 700)
//            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                
                Spacer()
                
                Text("Gees this flag")
                    .font(.largeTitle.bold())//.font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                VStack(spacing: 19) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button{
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial) //.background(.thinMaterial)     // .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                
                Text("Score: ???")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: asKQuestion)
        } message: {
            Text("Your score is ??")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func asKQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ScopewWithAnAlert_Previews: PreviewProvider {
    static var previews: some View {
        ScopewWithAnAlert()
    }
}
