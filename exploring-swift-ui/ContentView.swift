//
//  ContentView.swift
//  exploring-swift-ui
//
//  Created by TechAddict on 30/01/2022.
//

// "First Commit"

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("war")
                Spacer()
                HStack {
                    Spacer()
                Image("card3")
                    Spacer()
                Image("card4")
                    Spacer()
            }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).foregroundColor(Color.white).padding(.bottom,10)
                        Text("0").font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline).foregroundColor(Color.white).padding(.bottom,10)
                        Text("0").font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
        }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
