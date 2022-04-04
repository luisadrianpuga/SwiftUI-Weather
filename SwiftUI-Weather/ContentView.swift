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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                //This line of code adds the city name and its styling
                Text("Columbia, Maryland")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                //This line of code fills up the screen vertically as to push the other stuff up
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
