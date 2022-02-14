//
//  StackingUpButtons.swift
//  Day20-22
//
//  Created by Mishana on 12.02.2022.
//

//import SwiftUI
//
//struct StackingUpButtons: View {
//    var countries = ["algire", "barbados", "barselona", "estonia"]
//    var correctAnswer = Int.random(in: 0...3)
//
//    var body: some View {
//        ZStack{
//            Color.red
//                .ignoresSafeArea()
//            VStack(spacing: 30) {
//                VStack {
//                    Text("Top the country flag of")
//                        .foregroundColor(.white)
//                    Text(countries[correctAnswer])
//                        .foregroundColor(.white)
//                }
//
//                ForEach(0..<3) { number in
//                    Button{
//
//                    } label: {
//                        Image(countries[number])
//                            .renderingMode(.original)
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct StackingUpButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        StackingUpButtons()
//    }
//}
