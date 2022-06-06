//
//  BlankButton.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 06.06.2022.
//

import SwiftUI

struct BlankButton: View {
    let text: String
    var body: some View {
        Button {
            
        } label: {
            Text(text)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .font(AppFont.commonFont(fontSize: 16))
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

struct BlankButton_Previews: PreviewProvider {
    static var previews: some View {
        BlankButton(text: "Deposit")
    }
}
