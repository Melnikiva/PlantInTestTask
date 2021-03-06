//
//  ProfileView.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 05.06.2022.
//

import SwiftUI
import Kingfisher

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
                                .font(AppFont.commonFont(fontSize: 16))
                            Text("Matthew" + "  👋🏻")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .font(AppFont.commonFont(fontSize: 24))
                                .padding(.top, 10)
                        })
                        Spacer()
                        Button {
                            
                        } label: {
                            KFImage.url(URL(string: "https://thispersondoesnotexist.com/image")!, cacheKey: "Profile")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .scaledToFill()
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
                                .font(AppFont.commonFont(fontSize: 20))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                        )
                        .padding(.top, 36)
                        .padding(.bottom, 32)
                        .padding(.horizontal, 20)
                    
                    HStack(alignment: .center, spacing: 10, content: {
                        
                        BlankButton(text: "Deposit")
                        
                        BlankButton(text: "Withdraw")
                    }
                    )
                    .padding(.horizontal, 20)
                    
                    Text("🔥  Trending")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .font(AppFont.commonFont(fontSize: 20))
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
                            .font(AppFont.commonFont(fontSize: 20))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Show all")
                                .font(AppFont.commonFont(fontSize: 16))
                                .overlay (
                                    LinearGradient(
                                        colors: [Color("PurpleGradientStart"), Color("PurpleGradientEnd")],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                    .mask(
                                        Text("Show all")
                                            .font(AppFont.commonFont(fontSize: 16))
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
                Image(coin.alt)
                    .resizable()
                    .frame(width: 36, height: 36)
                VStack(alignment: .leading, spacing: 0) {
                    Text(coin.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .font(AppFont.commonFont(fontSize: 16))
                    Text(coin.alt)
                        .foregroundColor(Color.gray)
                        .font(AppFont.smallFont(fontSize: 12))
                }
                .padding(.leading, 10)
            }
            .frame(alignment: .leading)
            if UIImage(named: coin.alt + "curve") != nil
            {
                Image(coin.alt + "curve")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 164, height: 40)
                    .padding(.top, 14)
                    .padding(.bottom, 16)
            }
            else {
                Text("Missing data")
                    .foregroundColor(Color.gray)
                    .font(AppFont.commonFont(fontSize: 16))
                    .frame(width: 164, height: 40)
                    .padding(.top, 14)
                    .padding(.bottom, 16)
            }
            
            
            HStack {
                Text(coin.value)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .font(AppFont.commonFont(fontSize: 14))
                Spacer()
                if coin.trend == false {
                    Image(systemName: "arrowtriangle.down.fill")
                        .resizable()
                        .foregroundColor(Color("PrimaryRed"))
                        .frame(width: 6, height: 4)
                    Text(coin.change)
                        .foregroundColor(Color("PrimaryRed"))
                        .font(AppFont.smallFont(fontSize: 10))
                }
                else {
                    Image(systemName: "arrowtriangle.up.fill")
                        .resizable()
                        .foregroundColor(Color("PrimaryGreen"))
                        .frame(width: 6, height: 4)
                    Text(coin.change)
                        .foregroundColor(Color("PrimaryGreen"))
                        .font(AppFont.smallFont(fontSize: 10))
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
                        .font(AppFont.commonFont(fontSize: 12))
                        .foregroundColor(Color.gray)
                    Circle()
                        .fill(Color.gray)
                        .frame(width: 5, height: 5)
                    Text(piece.age + " ago")
                        .font(AppFont.commonFont(fontSize: 12))
                        .foregroundColor(Color.gray)
                }
                Spacer()
                Text(piece.title)
                    .font(AppFont.commonFont(fontSize: 14))
                    .foregroundColor(Color.white)
            })
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
