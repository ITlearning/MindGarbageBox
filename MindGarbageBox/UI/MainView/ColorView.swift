//
//  ColorView.swift
//  MindGarbageBox
//
//  Created by 인병윤 on 2022/07/07.
//

import SwiftUI

struct ColorView: View {

    var colorSet: [Color]
    var colorName: String

    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                ForEach(colorSet, id: \.self) { color in
                    color
                }
            }
            VStack {
                HStack {
                    Spacer()
                    NanumSquareB(text: colorName, color: Color.black, size: 14)
                }
                Spacer()
            }

        }
    }
}
