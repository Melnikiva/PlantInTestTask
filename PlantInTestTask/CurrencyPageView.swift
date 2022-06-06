//
//  CurrencyPageView.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 06.06.2022.
//

import SwiftUI

struct CurrencyPageView: View {
    
    let coin: Coin
    
    @State var amountToBuy: String = ""
    @State var amountToSell: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color("BackgroundBlack")
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    ZStack {
                        VStack(spacing: 0) {
                            Text(coin.alt + "/USD")
                                .frame(alignment: .top)
                                .foregroundColor(Color.white)
                                .font(AppFont.commonFont(fontSize: 16))
                                .padding(.bottom, 26)
                            Text("$ " + coin.value)
                                .foregroundColor(Color.white)
                                .font(AppFont.commonFont(fontSize: 32))
                                .padding(.bottom, 16)
                            if coin.trend {
                                Text("+" + coin.change)
                                    .foregroundColor(Color("PrimaryGreen"))
                                    .font(AppFont.commonFont(fontSize: 16))
                                    .padding(.bottom, 26)
                            } else {
                                Text("-" + coin.change)
                                    .foregroundColor(Color("PrimaryRed"))
                                    .font(AppFont.commonFont(fontSize: 16))
                                    .padding(.bottom, 26)
                            }
                            
                            HStack {
                                VStack(spacing: 8) {
                                    Text("24h Low")
                                        .foregroundColor(Color.gray)
                                        .font(AppFont.commonFont(fontSize: 12))
                                    Text("$ " + coin.value)
                                        .foregroundColor(Color.white)
                                        .font(AppFont.commonFont(fontSize: 16))
                                }
                                Spacer()
                                VStack(spacing: 8) {
                                    Text("24h High")
                                        .foregroundColor(Color.gray)
                                        .font(AppFont.commonFont(fontSize: 12))
                                    Text("$ " + coin.value)
                                        .foregroundColor(Color.white)
                                        .font(AppFont.commonFont(fontSize: 16))
                                }
                                Spacer()
                                VStack(spacing: 8) {
                                    Text("Volume (" + coin.alt + ")")
                                        .foregroundColor(Color.gray)
                                        .font(AppFont.commonFont(fontSize: 12))
                                    Text("$ " + coin.value)
                                        .foregroundColor(Color.white)
                                        .font(AppFont.commonFont(fontSize: 16))
                                }
                            }
                            .padding(.bottom, 20)
                        }
                        .frame(alignment: .top)
                        .padding(20)
                        .padding(.top, 40)
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color("PrimaryGrey"))
                                .frame(alignment: .bottom)
                    )
                        
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "chevron.backward")
                                .resizable()
                                .foregroundColor(Color.white)
                                .frame(width: 8, height: 16)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                .padding(.top, 60)
                                .padding(.leading, 20)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            TextField("", text: $amountToSell)
                                .keyboardType(.numberPad)
                                .foregroundColor(Color.white)
                                .font(AppFont.commonFont(fontSize: 20))
                                .placeholder(when: amountToSell.isEmpty) {
                                    Text("0").foregroundColor(.gray)
                                }
                            Text(coin.alt)
                                .foregroundColor(Color.white)
                        }
                        .padding(.bottom, 6)
                        Rectangle()
                            .fill(gradient)
                            .frame(width: .infinity, height: 1, alignment: .top)
                            .padding(.bottom, 6)
                        Text("Available: 0 " + coin.alt)
                            .foregroundColor(Color.gray)
                            .font(AppFont.commonFont(fontSize: 12))
                            .frame(width: .infinity, alignment: .leading)
                        
                        HStack {
                            TextField("0", text: $amountToBuy)
                                .keyboardType(.numberPad)
                                .foregroundColor(Color.white)
                                .font(AppFont.commonFont(fontSize: 20))
                                .placeholder(when: amountToBuy.isEmpty) {
                                    Text("0").foregroundColor(.gray)
                                }
                            Text("USD")
                                .foregroundColor(Color.white)
                        }
                        .padding(.bottom, 6)
                        Rectangle()
                            .fill(gradient)
                            .frame(width: .infinity, height: 1, alignment: .top)
                            .padding(.bottom, 6)
                        Text("Available: 0 USD")
                            .foregroundColor(Color.gray)
                            .font(AppFont.commonFont(fontSize: 12))
                            .frame(width: .infinity, alignment: .leading)
                        
                        HStack(spacing: 10) {
                            BlankCurrencyButton(text: "Buy " + coin.alt, descriptionText: "1 067 620 USD ≈ 5 " + coin.alt)
                            BlankCurrencyButton(text: "Sell " + coin.alt, descriptionText: "5 " + coin.alt + " ≈ 86 672 USD")
                        }
                        .padding(.top, 20)
                        
                        Text("💸  About " + coin.alt)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .font(AppFont.commonFont(fontSize: 20))
                            .padding(.top, 42)
                            .padding(.bottom, 16)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ExpandableTextView(coin.description)
                    }
                    .padding(20)
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            Text("Rank")
                                .foregroundColor(Color.white)
                                .font(AppFont.commonFont(fontSize: 16))
                            Spacer()
                            Text("№" + String(coin.rank))
                                .foregroundColor(Color.gray)
                                .font(AppFont.smallFont(fontSize: 16))
                        }
                        .padding(14)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("PrimaryGrey"))
                                .frame(width: .infinity, alignment: .bottom)
                        )
                        
                        HStack {
                            Text("Launch Date")
                                .foregroundColor(Color.white)
                                .font(AppFont.commonFont(fontSize: 16))
                            Spacer()
                            Text(coin.launchDate)
                                .foregroundColor(Color.gray)
                                .font(AppFont.smallFont(fontSize: 16))
                        }
                        .padding(14)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("PrimaryGrey"))
                                .frame(width: .infinity, alignment: .bottom)
                        )
                    }
                    .padding(.horizontal, 20)
                }
                .offset(x: 0, y: -60)
            }
            
        }
    }
}

struct CurrencyPageView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyPageView(coin: coinList[6])
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}
