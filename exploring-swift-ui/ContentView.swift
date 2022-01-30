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
        
        VStack {
            
            Spacer()
            
            HStack (spacing: 5){
                Spacer()
                Text("Left Text").padding().background(Color.red)
                Spacer()
                Text("Right Text").padding().background(Color.yellow)
                Spacer()
            }
            
            Spacer()
            
            ZStack {
                Image("war")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Center Text").padding().background(Color.green)
            }
            
            Spacer()
            
            HStack (spacing: 5){
                Spacer()
                Text("Left Text").padding().background(Color.red)
                Spacer()
                Text("Right Text").padding().background(Color.yellow)
                Spacer()
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
