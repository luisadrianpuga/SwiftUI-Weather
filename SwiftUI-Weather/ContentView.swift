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
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                //This line of code adds the city name and its styling
                Text("Columbia, Maryland")
                    //These three lines of code takes care of the styling of the city title
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                //This VStack handles the sun icon and the temperature , the spacing in this determines how close these two components get
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        //This allows the icon to be resized properly
                        .resizable()
                        //This line of code fixes the aspect ratio of the icon as to prevent it from looking stretched
                        .aspectRatio(contentMode: .fit)
                        //This line of code produces the sizing of the icon
                        .frame(width: 180, height: 180)
                    //This line of code is the temperature
                    Text("76°")
                        //These two lines handle the stlying to the code
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
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
