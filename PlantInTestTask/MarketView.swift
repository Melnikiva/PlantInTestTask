//
//  MarketView.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 05.06.2022.
//

import SwiftUI

let coinList : [Coin] = [
    Coin(title: "Ethereum", alt: "ETH", change: "4.95%", trend: true, value: "$2,678.20"),
    Coin(title: "Ethereum 2", alt: "ETH2", change: "4.91%", trend: true, value: "$2,383.20"),
    Coin(title: "Tether", alt: "USDT", change: "0.05%", trend: false, value: "$2.00"),
    Coin(title: "Binance Coin", alt: "BNB", change: "0.27%", trend: false, value: "$352,50"),
    Coin(title: "Cardano", alt: "ADA", change: "4.11%", trend: true, value: "$2,836,137.20"),
    Coin(title: "Chain link", alt: "LINK", change: "2.23%", trend: true, value: "$2,836,137.20"),
    Coin(title: "Bitcoin", alt: "BTC", change: "2.23%", trend: true, value: "$36,751.20"),
]

struct MarketView: View {
    var body: some View {
        ZStack {
            Color("BackgroundBlack")
                .ignoresSafeArea()
            ScrollView {
                
                VStack(alignment: .leading, spacing: 42, content: {
                    ForEach(coinList, id: \.self) { coin in
                        CoinInfoView(coin: coin)
                    }
                })
                .padding(20)
            }
            .frame(maxHeight: .infinity)
        }
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}

struct CoinInfoView: View {
    
    let coin: Coin
    
    var body: some View {
        HStack {
            Image(coin.title)
                .frame(width: 46, height: 46)
            VStack(alignment: .leading, spacing: 8, content: {
                
                HStack {
                    Text(coin.title)
                        .foregroundColor(Color.white)
                        .font(.system(size: 16, weight: .semibold))
                    Spacer()
                    Text(coin.value)
                        .foregroundColor(Color.gray)
                        .font(.system(size: 15))
                }
                HStack {
                    Text(coin.alt)
                        .foregroundColor(Color.gray)
                        .font(.system(size: 16))
                    Spacer()
                    if coin.trend {
                        Text("+" + coin.change)
                            .font(.system(size: 16))
                            .foregroundColor(Color("PrimaryGreen"))
                    }
                    else {
                        Text("-" + coin.change)
                            .font(.system(size: 16))
                            .foregroundColor(Color("PrimaryRed"))
                    }
                }
            })
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
