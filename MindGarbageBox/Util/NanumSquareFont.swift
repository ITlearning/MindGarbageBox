//
//  NanumSquareFont.swift
//  MindGarbageBox
//
//  Created by 인병윤 on 2022/07/07.
//

import SwiftUI

struct NanumSquareL: View {

    var text: String
    var color: Color
    var size: CGFloat
    var font: String = "NanumSquareRoundL"

    var body: some View {
        Text(text)
            .fixedSize()
            .font(.custom(font, size: size))
            .foregroundColor(color)
    }
}

struct NanumSquareB: View {

    var font: String = "NanumSquareRoundB"
    var text: String = ""
    var color: Color
    var size: CGFloat

    var body: some View {
        Text(text)
            .fixedSize()
            .font(.custom(font, size: size))
            .foregroundColor(color)
    }
}

struct NanumSquareEB: View {

    var font: String = "NanumSquareRoundEB"
    var text: String = ""
    var color: Color
    var size: CGFloat

    var body: some View {
        Text(text)
            .fixedSize()
            .font(.custom(font, size: size))
            .foregroundColor(color)
    }
}

struct NanumSquareR: View {

    var font: String = "NanumSquareRoundR"
    var text: String = ""
    var color: Color
    var size: CGFloat

    var body: some View {
        Text(text)
            .fixedSize()
            .font(.custom(font, size: size))
            .foregroundColor(color)
    }
}

