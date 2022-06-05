//
//  ProfileView.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 05.06.2022.
//

import SwiftUI

let trending : [Coin] = [
    Coin(title: "Binance Coin", alt: "BNB", change: "0.27%", trend: false, value: "$352,20"),
    Coin(title: "Cardano", alt: "ADA", change: "4.11%", trend: true, value: "$2,936,136.20"),
    Coin(title: "Ethereum", alt: "ETH", change: "4.95%", trend: true, value: "$2678.20")
]

let newsList : [News] = [
    News(title: "Six XRP Token Holders to Speak in Ripple-SEC Case as Circle Gets Subpoena", topic: "Altcoin news", age: "6 min", imageTitle: "News1"),
    News(title: "Bitcoin Eyes Key Upside Break, Outperforms Ethereum, DOGE Rallies", topic: "Bitcoin news", age: "6 min", imageTitle: "News2")
]

struct ProfileView: View {
    
    let gradient = LinearGradient(colors: [Color("PurpleGradientStart"), Color("PurpleGradientEnd")],
                                  startPoint: .leading,
                                  endPoint: .trailing)
    
    var body: some View {
        ZStack {
            Color("BackgroundBlack")
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .center, spacing: 0, content: {
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 0, content: {
                            Text("Welcome back, ")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 16))
                            Text("Matthew" + "  👋🏻")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .padding(.top, 10)
                        })
                        Spacer()
                        Button {
                            
                        } label: {
                            Image("ProfilePhotoTest")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    
                    Circle()
                        .fill(Color("PrimaryGrey"))
                        .frame(width: 180, height: 180)
                        .opacity(0.5)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [Color("PurpleGradientStart"), Color("PurpleGradientEnd")]), startPoint: .bottom, endPoint: .top)
                                .mask(
                                    Circle()
                                        .frame(width: 90, height: 90)
                                        .blur(radius: 25)
                                )
                        )
                        .overlay(
                            Text("$246.00")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                        )
                        .padding(.top, 36)
                        .padding(.bottom, 32)
                        .padding(.horizontal, 20)
                    
                    HStack(alignment: .center, spacing: 10, content: {
                        
                        Button {
                            
                        } label: {
                            Text("Deposit")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                                .padding(.vertical, 16)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 12.0)
                                        .fill(Color("PrimaryGrey"))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(self.gradient)
                                        )
                                )
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Withdraw")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                                .padding(.vertical, 16)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 12.0)
                                        .fill(Color("PrimaryGrey"))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(self.gradient)
                                        )
                                )
                        }
                    }
                    )
                    .padding(.horizontal, 20)
                    
                    Text("🔥  Trending")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .font(.system(size: 20))
                        .padding(.top, 42)
                        .padding(.bottom, 22)
                        .padding(.horizontal, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false)
                    {
                        HStack(alignment: .center, spacing: 16) {
                            ForEach(trending, id: \.self) { coin in
                                TrendingItem(coin: coin)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                    }
                   
                    
                    
                    HStack {
                        Text("🪙  News")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                        
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Show all")
                                .font(.system(size: 16, weight: .semibold))
                                .overlay (
                                    LinearGradient(
                                        colors: [Color("PurpleGradientStart"), Color("PurpleGradientEnd")],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                    .mask(
                                        Text("Show all")
                                            .font(.system(size: 16, weight: .semibold))
                                    )
                                )
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 42)
                    .padding(.bottom, 22)
                    VStack(alignment: .center, spacing: 16) {
                        ForEach (newsList, id: \.self) { piece in
                            NewsView(piece: piece)
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    }
                    
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.top, 20)
               
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


struct TrendingItem: View {
    
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center, spacing: 0) {
                Image(coin.title)
                    .resizable()
                    .frame(width: 36, height: 36)
                VStack(alignment: .leading, spacing: 0) {
                    Text(coin.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .font(.system(size: 16))
                    Text(coin.alt)
                        .foregroundColor(Color.gray)
                        .font(.system(size: 12))
                }
                .padding(.leading, 10)
            }
            .frame(alignment: .leading)
            if UIImage(named: coin.title + " Curve") != nil
            {
                Image(coin.title + " Curve")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 164, height: 40)
                    .padding(.top, 14)
                    .padding(.bottom, 16)
            }
            else {
                Text("Missing data")
                    .foregroundColor(Color.gray)
                    .frame(width: 164, height: 40)
                    .padding(.top, 14)
                    .padding(.bottom, 16)
            }
            
            
            HStack {
                Text(coin.value)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .font(.system(size: 14))
                Spacer()
                if coin.trend == false {
                    Image(systemName: "arrowtriangle.down.fill")
                        .resizable()
                        .foregroundColor(Color("PrimaryRed"))
                        .frame(width: 6, height: 4)
                    Text(coin.change)
                        .foregroundColor(Color("PrimaryRed"))
                        .font(.system(size: 10))
                }
                else {
                    Image(systemName: "arrowtriangle.up.fill")
                        .resizable()
                        .foregroundColor(Color("PrimaryGreen"))
                        .frame(width: 6, height: 4)
                    Text(coin.change)
                        .foregroundColor(Color("PrimaryGreen"))
                        .font(.system(size: 10))
                }
                
            }
            
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.white.opacity(0.12))
                .frame(alignment: .bottom)
        )
        .frame(maxWidth: 200)
    }
}

struct NewsView: View {
    
    let piece: News
    
    var body: some View {
        HStack {
            Image(piece.imageTitle)
                .frame(width: 80, height: 80, alignment: .leading)
                .padding(.trailing, 23)
            VStack (alignment: .leading, spacing: 0, content: {
                HStack {
                    Text(piece.topic)
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                    Circle()
                        .fill(Color.gray)
                        .frame(width: 5, height: 5)
                    Text(piece.age + " ago")
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                }
                Spacer()
                Text(piece.title)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
            })
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
