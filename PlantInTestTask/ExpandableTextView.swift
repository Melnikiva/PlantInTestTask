//
//  ExpandableTextView.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 06.06.2022.
//

import SwiftUI

struct ExpandableTextView: View {
    var maxPreviewLines = 6
        let text: String

        @State private var showMaxLines = false

        var body: some View {
            VStack {
                Text(self.text)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .font(AppFont.commonFont(fontSize: 16))
                    .foregroundColor(Color.white)
                    .lineLimit(showMaxLines ? nil : maxPreviewLines)
                Button(action: {
                    withAnimation {
                        self.showMaxLines.toggle()
                    }
                }){
                    Text(!self.showMaxLines ? "Show more +" : "Show less -")
                        .font(AppFont.smallFont(fontSize: 16))
                        .overlay (
                            LinearGradient(
                                colors: [Color("PurpleGradientStart"), Color("PurpleGradientEnd")],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                            .mask(
                                Text(!self.showMaxLines ? "Show more +" : "Show less -")
                                    .font(AppFont.smallFont(fontSize: 16))
                            )
                        )
                        .background(
                                Rectangle()
                                    .foregroundColor(Color("BackgroundBlack"))
                                    .blur(radius: 20)
                                    .frame(width: 500, height: !self.showMaxLines ? 120 : 0, alignment: .center)
                        )
                        .padding(.trailing, 15)
                        .padding(.top, 2)

                }
                .buttonStyle(PlainButtonStyle())
            }
                .fixedSize(horizontal: false, vertical: true)

        }

        init(_ text: String) {
            self.text = text
        }
}
