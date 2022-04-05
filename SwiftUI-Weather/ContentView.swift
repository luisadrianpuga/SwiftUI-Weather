//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Luis Adrian on 4/4/22.
//  NO DYNAMIC FONT ALL FONTS ARE HARD CODED

import SwiftUI

struct ContentView: View {
    var body: some View {
        //This code is incharge of producing a background color for the app
        ZStack {
            //This code will take in as many colors as we want
            LinearGradient(gradient: Gradient(colors: [.blue, Color("Color")]),//This color is in assets
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
                    //This line will change the main weather icon
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
                //This aligns the weathers
                .padding(.bottom, 40)
                //This VStack handles the sun icon and the temperature , the spacing in this determines how close these two components get
                HStack(spacing: 20){
                    //Days of the week
                    WeatherDayView(dayOfWeek: "MON", dayImageName: "cloud.sun.fill", temperature: 67)
                    WeatherDayView(dayOfWeek: "TUES", dayImageName: "cloud.drizzle.fill", temperature: 84)
                    WeatherDayView(dayOfWeek: "WED", dayImageName: "cloud.sun.bolt.fill", temperature: 73)
                    WeatherDayView(dayOfWeek: "THUR", dayImageName: "cloud.sun.fill", temperature: 84)
                    WeatherDayView(dayOfWeek: "FRI", dayImageName: "sun.max.fill", temperature: 73)
                }
                
                //This line of code fills up the screen vertically as to push the other stuff up
                Spacer()
                
                //This button does not do much
                Button {
                    //This is our button functionality
                    print("tapped")
                //This is where the button text is added
                } label: {
                //Text for the button
                Text("Change Day Time")
                        //How big
                        .frame(width: 280, height: 50)
                        //BG Color
                        .background(Color.white)
                        //Font Styling
                        .font(.system(size: 20, weight: .bold, design: .default))
                        //Corner radius
                        .cornerRadius(16.0)
                    
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

//This structure will allow for the weather component to be resused instead of being copied an pasted every time.
struct WeatherDayView: View {
    //These variables handle the changes in the structure
    var dayOfWeek: String
    var dayImageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            //This line of code is the day of the week
            Text(dayOfWeek)
            //These two lines handle the stlying to the code
                .font(.system(size:16, weight: .medium, design: .default))
                .foregroundColor(.white)
            //This line will change the main weather icon
            Image(systemName: dayImageName)
                .renderingMode(.original)
            //This allows the icon to be resized properly
                .resizable()
            //This line of code fixes the aspect ratio of the icon as to prevent it from looking stretched
                .aspectRatio(contentMode: .fit)
            //This line of code produces the sizing of the icon
                .frame(width: 40, height: 40)
            //This line of code is the temperature
            Text("\(temperature)°")
            //These two lines handle the stlying to the code
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
