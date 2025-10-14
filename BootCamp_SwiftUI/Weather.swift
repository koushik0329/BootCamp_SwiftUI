//
//  Weather.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/10/25.
//


import SwiftUI

struct Weather: View {
    
    
    var body: some View {
        ZStack {
            Color("CustomColor").ignoresSafeArea()
            VStack(spacing : 20) {
//                Spacer()
                
                Text("San Francisco")
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("Monday, Oct 28")
                    .foregroundColor(.white.opacity(0.8))
                

                ZStack{
                    Circle()
                    .stroke(Color.blue, lineWidth: 5)
                    .frame(width: 180, height: 180)
                    
                    VStack {
                        
                        
                        Image(systemName: "cloud.sun.fill")
                            .symbolRenderingMode(.multicolor)
                            .font(.system(size: 40))
                        Text("24")
                            .font(.system(size: 65))
                            .foregroundColor(.white)
                        
                        Text("Partly Cloudy")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    Text("6 AM")
                    Spacer()
                    Text("12 PM")
                    Spacer()
                    Text("6 PM")
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
                
                HStack(spacing: 30) {
                    VStack(spacing: 8) {
                        Text("Now")
                            .foregroundColor(.white.opacity(0.8))
                        Image(systemName: "sun.max.fill")
                            .symbolRenderingMode(.multicolor)
                            .font(.system(size: 24))
                        Text("24")
                            .foregroundColor(.white)
                    }
                    .frame(width: 60, height: 90)
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(12)
                    
                    VStack(spacing: 8) {
                        Text("3 PM")
                            .foregroundColor(.white.opacity(0.8))
                        Image(systemName: "sun.max.fill")
                            .symbolRenderingMode(.multicolor)
                            .font(.system(size: 24))
                        Text("26")
                            .foregroundColor(.white)
                    }
                    .frame(width: 60, height: 90)
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(12)
                    
                    
                    VStack(spacing: 8) {
                        Text("6 PM")
                            .foregroundColor(.white.opacity(0.8))
                        Text("22")
                            .foregroundColor(.white)
                    }
                    .frame(width: 60, height: 90)
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(12)
                    
                    VStack(spacing: 8) {
                        Text("9 PM")
                            .foregroundColor(.white.opacity(0.8))
                        
                    }
                    .frame(width: 60, height: 90)
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(12)
                    
              
                }
                .padding(.top, 20)
                
                Spacer()
                
                HStack(spacing : 40) {
                    VStack(spacing: 10) {
                        ZStack {
                            Circle()
                            .stroke(Color.blue, lineWidth: 5)
                            .frame(width: 60, height: 60)
                            
                            Text("68%")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                        Text("Humidity")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                    .frame(width: 90, height: 90)
                    
                    VStack(spacing: 10) {
                        ZStack {
                            Circle()
                            .stroke(Color.blue, lineWidth: 5)
                            .frame(width: 60, height: 60)
                            
                            Text("68%")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                        Text("Humidity")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                    .frame(width: 90, height: 90)
                    
                    VStack(spacing: 10) {
                        ZStack {
                            Circle()
                            .stroke(Color.blue, lineWidth: 5)
                            .frame(width: 60, height: 60)
                            
                            Text("68%")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                        Text("Humidity")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                    .frame(width: 90, height: 90)
                }
                .frame(width: 370, height: 120)
                .background(Color.white.opacity(0.1))
                .cornerRadius(18)
                
                Spacer()
            }
           
        }
    }
}

struct weather_Previews: PreviewProvider {
    static var previews: some View {
        Weather()
    }
}
