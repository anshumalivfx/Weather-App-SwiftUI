//
//  ContentView.swift
//  Weather-App
//
//  Created by Anshumali Karna on 02/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("New Delhi, DL")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("14°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.bolt.rain.fill", temperature: 8)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.heavyrain.fill", temperature: 6)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.fog.fill", temperature: 14)
                    WeatherDayView(dayOfWeek: "SUN", imageName: "sun.max.fill", temperature: 15)
                    WeatherDayView(dayOfWeek: "MON", imageName: "sun.max.fill", temperature: 17)
                }
                Spacer()
                
                Button{
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color(.white))
                        .font(.system(size: 20, weight: .semibold, design: .default))
                        .cornerRadius(10)
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

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight:.medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight:.medium))
                .foregroundColor(.white)
            
            
        }
    }
}
