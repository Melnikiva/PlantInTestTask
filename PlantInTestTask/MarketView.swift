//
//  MarketView.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 05.06.2022.
//

import SwiftUI

struct MarketView: View {
    var body: some View {
        ZStack {
            Color("BackgroundBlack")
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 42, content: {
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
    @State var isPresented = false
    
    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            HStack {
                Image(coin.alt)
                    .frame(width: 46, height: 46)
                VStack(alignment: .leading, spacing: 8, content: {
                    
                    HStack {
                        Text(coin.title)
                            .foregroundColor(Color.white)
                            .font(AppFont.commonFont(fontSize: 16))
                        Spacer()
                        Text("$" + coin.value)
                            .foregroundColor(Color.gray)
                            .font(AppFont.commonFont(fontSize: 15))
                    }
                    HStack {
                        Text(coin.alt)
                            .foregroundColor(Color.gray)
                            .font(AppFont.commonFont(fontSize: 16))
                        Spacer()
                        if coin.trend {
                            Text("+" + coin.change)
                                .font(AppFont.commonFont(fontSize: 16))
                                .foregroundColor(Color("PrimaryGreen"))
                        }
                        else {
                            Text("-" + coin.change)
                                .font(AppFont.commonFont(fontSize: 16))
                                .foregroundColor(Color("PrimaryRed"))
                        }
                    }
                })
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .fullScreenCover(isPresented: $isPresented,
                         content:{
            CurrencyPageView(coin: coin)
        })
    }
}
