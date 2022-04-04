//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Luis Adrian on 4/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //This code is incharge of producing a background color for the app
        ZStack {
            //This code will take in as many colors as we want
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
