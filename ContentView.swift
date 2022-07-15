//
//  ContentView.swift
//  SwiftUI Slots
//
//  Created by Alex Ivanescu on 15.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 1000
    @State var image1 = "1"
    @State var image2 = "2"
    @State var image3 = "3"
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Spacer()
            HStack {
                Spacer()
                Text("Credits: ")
                Text(String(score))
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                Image(image1).resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image(image2).resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image(image3).resizable().aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            Button {
                let r1 = Int.random(in: 1...3)
                let r2 = Int.random(in: 1...3)
                let r3 = Int.random(in: 1...3)
                
                image1 = String(r1)
                image2 = String(r2)
                image3 = String(r3)
                
                if (r1 == r2 && r2 == r3) {
                    score += 50
                } else {
                    score -= 5
                }
                
                
            } label: {
                Text("Spin").font(.headline).foregroundColor(Color.black).padding().padding([.leading, .trailing], 40).background(Color(hue: 0.345, saturation: 0.325, brightness: 0.978)).cornerRadius(20)
            }

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
