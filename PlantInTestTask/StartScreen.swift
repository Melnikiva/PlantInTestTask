//
//  StartScreen.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 05.06.2022.
//

import SwiftUI

let gradient = LinearGradient(colors: [Color("PurpleGradientStart"), Color("PurpleGradientEnd")],
                              startPoint: .leading,
                              endPoint: .trailing)

struct StartScreen: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundBlack")
                    .ignoresSafeArea()
                VStack (alignment: .center, spacing: 0, content: {
                    Spacer()
                    Image("Wallet")
                        .frame(alignment: .bottom)
                    
                    VStack {
                        Text("Easiness")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .font(.system(size: 32))
                            .padding(.top, 42)
                        Text("Supplying the convenient transactions chains")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 16))
                            .baselineOffset(2)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.top, 16)
                            .padding(.bottom, 24)
                        NavigationLink {
                            SecurityScreen().navigationBarBackButtonHidden(true)
                        } label: {
                            Text("Continue")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                                .padding(.vertical, 16)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 30.0)
                                        .fill(gradient)
                                )
                        }
                        .padding(.bottom, 42)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 20)
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color("PrimaryGrey"))
                            .frame(alignment: .bottom)
                    )
                    .padding(.init(top: 72, leading: 20, bottom: 64, trailing: 20))
                })
            }
        }
        .navigationBarHidden(true)
    }
}

struct SecurityScreen : View {
    var body: some View {
        ZStack {
            Color("BackgroundBlack")
                .ignoresSafeArea()
            VStack (alignment: .center, spacing: 0, content: {
                Spacer()
                Image("Shield")
                    .frame(alignment: .bottom)
                
                VStack {
                    Text("Security")
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .font(.system(size: 32))
                        .padding(.top, 42)
                    Text("Providing crypto audience with high-tech security solutions")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 16))
                        .baselineOffset(2)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.top, 16)
                        .padding(.bottom, 24)
                    NavigationLink {
                        TransformationScreen().navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Continue")
                            .foregroundColor(Color.white)
                            .font(.system(size: 16))
                            .padding(.vertical, 16)
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 30.0)
                                    .fill(gradient)
                            )
                    }
                    .padding(.bottom, 42)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 20)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color("PrimaryGrey"))
                        .frame(alignment: .bottom)
                )
                .padding(.init(top: 72, leading: 20, bottom: 64, trailing: 20))
            })
        }
    }
}

struct TransformationScreen : View {
    
    @State var showProfile: Bool = false
    @AppStorage("onboardScreenShown")
    var onboardScreenShown: Bool = false
    
    var body: some View {
        ZStack {
            Color("BackgroundBlack")
                .ignoresSafeArea()
            VStack (alignment: .center, spacing: 0, content: {
                Spacer()
                Image("Rocket")
                    .frame(alignment: .bottom)
                
                VStack {
                    Text("Transformation")
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .font(.system(size: 32))
                        .padding(.top, 42)
                    Text("Diversifying crypto investment experience worldwide")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 16))
                        .baselineOffset(2)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.top, 16)
                        .padding(.bottom, 24)
                    Button {
                        showProfile.toggle()
                        onboardScreenShown = true
                    } label: {
                        Text("Continue")
                            .foregroundColor(Color.white)
                            .font(.system(size: 16))
                            .padding(.vertical, 16)
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 30.0)
                                    .fill(gradient)
                            )
                    }
                    .padding(.bottom, 42)
                    .fullScreenCover(isPresented: $showProfile) {
                        ContentView()
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 20)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color("PrimaryGrey"))
                        .frame(alignment: .bottom)
                )
                .padding(.init(top: 72, leading: 20, bottom: 64, trailing: 20))
            })
        }
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartScreen()
            SecurityScreen()
            TransformationScreen()
        }
    }
}
