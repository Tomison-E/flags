//
//  ContentView.swift
//  flags
//
//  Created by Lanre ESAN on 20/03/2020.
//  Copyright © 2020 tomisinesan.com. All rights reserved.
//

import SwiftUI

struct FlagView : View {
    var imageUrl: String
    
    var body : some View{
        Image(imageUrl).renderingMode(.original).clipShape(Capsule()).overlay(Capsule().stroke(Color.black, lineWidth: 1)).shadow(color: .black, radius: 2)
    }
}



struct ContentView: View {

    @State private var countries = ["Estonia","France","Nigeria"].shuffled()
    @State private var correctAnswer = Int.random(in:0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var animationAmount = 0.0
    @State private var amount = [0.0,0.0,0.0]
    @State private var visible = [0.25,0.25,0.25]

    var body: some View {
        ZStack{
          LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
          .edgesIgnoringSafeArea(.all)
        VStack(spacing: 30) {
        VStack {
            Text("Tap the flag of")
                .foregroundColor(Color.white)
            Text(countries[correctAnswer]).fontWeight(.black).foregroundColor(.white).font(.largeTitle)
        }
        
        ForEach (0 ..< 3){ number in
            
            Button(action:{
                self.flagTapped(number)
            }){
               
                FlagView(imageUrl: self.countries[number]).rotation3DEffect(.degrees(self.amount[number]), axis: (x: 0, y: 1 , z: 0)).opacity(self.visible[number])
            }
           
            
            }
            Spacer()
            VStack {
                ZStack {
                 AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]),
                                   center: .center)
                Text("Your score is \(score)")
                    .foregroundColor(Color.white)
                }
            }
        }
        }.alert(isPresented: $showingScore){
            Alert(title: Text(scoreTitle),message:
                scoreTitle == "Correct" ? Text("Your score is \(score)"):Text("Wrong \(countries[correctAnswer])"),
                  dismissButton: .default(Text("Continue")){
                    self.askQuestions()
                })
        }
    }
    
    func flagTapped(_ number: Int){
        visible = [0.25,0.25,0.25]
        if number == correctAnswer{
            scoreTitle = "Correct"
            score+=1
            withAnimation {
                self.amount[number] += 360
            }
            self.visible[number] = 1.0
        }
        else{
            scoreTitle = "Wrong"
              score-=1
        }
        showingScore = true
      
    }
    
    func askQuestions(){
        countries.shuffle()
        correctAnswer = Int.random(in:0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


