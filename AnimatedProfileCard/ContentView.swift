//
//  ContentView.swift
//  AnimatedProfileCard
//
//  Created by Ece Saygut on 14.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        GradientCardView()
    }
}

struct GradientCardView: View {
    
    @State var xflipped = false
    @State var yflipped = false
    @State var zflipped = false
    @State var colorIndex = 0
    @State var blurRadius = 0.0
    @State var cornerRadius = 30.0
    
    var body: some View{
        GeometryReader { geometry in
            let screenWidth = geometry.size.width
            let screenHeight = geometry.size.height
            
            
            ScrollView {
                VStack {
                    
                    ZStack {
                        Group {
                            RoundedRectangle(cornerRadius: CGFloat(cornerRadius))
                                .fill(gradientColors[colorIndex])
                                .frame(width: screenWidth / 1.10, height: screenWidth * 0.57)
                                .shadow(radius: 50)
                                .blur(radius: CGFloat(blurRadius))
                                .multilineTextAlignment(.center)
                                .padding(.top, 10)
                            
                                .rotation3DEffect(.degrees(zflipped ? 180 : 0), axis: (x: 0, y: 1, z: 0), anchor: .center)
                                .rotation3DEffect(.degrees(xflipped ? 180 : 0), axis: (x: 1, y: 0, z: 0), anchor: .center)
                                .rotation3DEffect(.degrees(yflipped ? 180 : 0), axis: (x: 0, y: 0, z: 1), anchor: .center)
                            
                            Image("nullUserIcon")
                                .resizable()
                                .frame(width: screenWidth/4.5, height: screenHeight/8.5)
                                .padding(.bottom, screenHeight / 12)
                                .opacity(zflipped ? 0 : 1)
                                .rotation3DEffect(.degrees(zflipped ? 180 : 0), axis: (x: 0, y: 1, z: 0), anchor: .center)
                                .opacity(xflipped ? 0 : 1)
                                .rotation3DEffect(.degrees(xflipped ? 180 : 0), axis: (x: 1, y: 0, z: 0), anchor: .center)
                                .opacity(yflipped ? 0 : 1)
                                .rotation3DEffect(.degrees(yflipped ? 180 : 0), axis: (x: 0, y: 0, z: 1), anchor: .center)
                            
                            
                            Text("Ece SAYGUT")
                                .padding(.top, 95)
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                                .opacity(zflipped ? 0 : 1)
                                .rotation3DEffect(.degrees(zflipped ? 180 : 0), axis: (x: 0, y: 1, z: 0), anchor: .center)
                                .opacity(xflipped ? 0 : 1)
                                .rotation3DEffect(.degrees(xflipped ? 180 : 0), axis: (x: 1, y: 0, z: 0), anchor: .center)
                                .opacity(yflipped ? 0 : 1)
                                .rotation3DEffect(.degrees(yflipped ? 180 : 0), axis: (x: 0, y: 0, z: 1), anchor: .center)
                            
                            
                            Text("ecesaygut@gmail\(".")com")
                                .fontWeight(.regular)
                                .padding(.top, 165)
                                .font(.title2)
                                .foregroundColor(.black)
                                .opacity(zflipped ? 0 : 1)
                                .rotation3DEffect(.degrees(zflipped ? 180 : 0), axis: (x: 0, y: 1, z: 0), anchor: .center)
                                .opacity(xflipped ? 0 : 1)
                                .rotation3DEffect(.degrees(xflipped ? 180 : 0), axis: (x: 1, y: 0, z: 0), anchor: .center)
                                .opacity(yflipped ? 0 : 1)
                                .rotation3DEffect(.degrees(yflipped ? 180 : 0), axis: (x: 0, y: 0, z: 1), anchor: .center)
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.6)) {
                                self.zflipped.toggle()
                            }
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.6)) {
                                self.xflipped.toggle()
                            }
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.6)) {
                                self.yflipped.toggle()
                            }
                        }
                        
                        Group {
                            Text("Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. \nInteger commodo commodo orci, id\n aliquet felis tincidunt eget.\nIn hac habitasse platea dictumst.")
                                .multilineTextAlignment(.center)
                            
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(.black)
                                .opacity(zflipped ? 1 : 0)
                                .rotation3DEffect(.degrees(zflipped ? 0 : 180), axis: (x: 0, y: 1, z: 0), anchor: .center)
                            
                        }
                    }
                    
                    Text("Kart Özellikleri")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.top, 1)
                    
                        .cornerRadius(10)
                        .padding(.top, 10)
                        .padding(.bottom, 1)
                    
                    GradientColorPalette(colorIndex: $colorIndex)
                        .padding(.horizontal)
                        .padding(.top, 1)
                    
                    HStack {
                        Stepper(value: $blurRadius, in: 0...10) {
                            Text("Blur Efekti: \(Int(blurRadius))")
                                .font(.title3)
                                .foregroundColor(.black)
                            
                        }
                        .padding(.top, 25)
                        .padding(.bottom, 25)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Stepper(value: $cornerRadius, in: 0...50) {
                            Text("Corner Efekti: \(Int(cornerRadius))")
                                .font(.title3)
                                .foregroundColor(.black)
                                .font(.title3)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Spacer()
                        Button(action: {
                                withAnimation(.easeInOut(duration: 0.6)) {
                                    self.zflipped.toggle()
                                }
                            }) {
                                Text("X Ekseni")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 110, height: 50)
                                    .background(Color(red: 0.1, green: 0.3, blue: 0.8))
                                    .cornerRadius(20)
                                    .shadow(color: Color(red: 0.1, green: 0.3, blue: 0.8).opacity(0.3), radius: 10, x: 0, y: 5)
                            }
                        
                        Spacer()
                        Button(action: {
                                withAnimation(.easeInOut(duration: 0.6)) {
                                    self.xflipped.toggle()
                                }
                            }) {
                                Text("Y Ekseni")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 110, height: 50)
                                    .background(Color(red: 0.1, green: 0.3, blue: 0.8))
                                    .cornerRadius(20)
                                    .shadow(color: Color(red: 0.1, green: 0.3, blue: 0.8).opacity(0.3), radius: 10, x: 0, y: 5)
                            }
                        Spacer()
                        
                        Button(action: {
                               withAnimation(.easeInOut(duration: 0.6)) {
                                   self.yflipped.toggle()
                               }
                           }) {
                               Text("Z Ekseni")
                                   .font(.title3)
                                   .fontWeight(.semibold)
                                   .foregroundColor(.white)
                                   .padding()
                                   .frame(width: 110, height: 50)
                                   .background(Color(red: 0.1, green: 0.3, blue: 0.8))
                                   .cornerRadius(20)
                                   .shadow(color: Color(red: 0.1, green: 0.3, blue: 0.8).opacity(0.3), radius: 10, x: 0, y: 5)
                                   }
                        Spacer()
                    }.padding(.top, 25)
                    .padding(.horizontal)
                                   
                    }
                    
                }
            }
        
    }
    }
    

struct GradientColorPalette: View {
    
    @Binding var colorIndex: Int
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing: 13) {
                ForEach(gradientColors.indices, id: \.self) { index in
                    Circle()
                        .fill(gradientColors[index])
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            colorIndex = index
                        }
                }
            }
            .padding(.horizontal, 5)
        }.padding(.top, 15)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GradientCardView()
    }
}
