//
//  BlankCurrencyButton.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 06.06.2022.
//

import SwiftUI

struct BlankCurrencyButton: View {
    
    let text: String
    let descriptionText: String
    
    var body: some View {
        Button {
            
        } label: {
            VStack(spacing: 2) {
                Text(text)
                    .foregroundColor(Color.white)
                    .font(AppFont.commonFont(fontSize: 16))
                Text(descriptionText)
                    .foregroundColor(Color.gray)
                    .font(AppFont.commonFont(fontSize: 12))
            }
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 12.0)
                    .fill(Color("PrimaryGrey"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(gradient)
                    )
            )
            
        }
    }
}

struct BlankCurrencyButton_Previews: PreviewProvider {
    static var previews: some View {
        BlankCurrencyButton(text: "Sell BTC", descriptionText: "1 067 620 USD = 5 BTC")
    }
}
