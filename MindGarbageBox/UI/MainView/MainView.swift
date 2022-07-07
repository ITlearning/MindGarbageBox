//
//  MainView.swift
//  MindGarbageBox
//
//  Created by 인병윤 on 2022/07/07.
//

import SwiftUI

struct MainView: View {

    @StateObject private var viewModel: ViewModel = ViewModel()

    var body: some View {

        switch viewModel.firstLaunch {
        case true:
            EmptyView()
        case false:
            firstLaunchView
        }


    }
}

extension MainView {
    var firstLaunchView: some View {
        ZStack {
            VStack(spacing: 10) {
                NanumSquareB(text: "어서오세요! 👋🏻", color: Color.black, size: 30)
                NanumSquareL(text: "배경색으로 원하는 색을 골라보세요!", color: Color.black, size: 20)

                TabView(selection: $viewModel.index) {
                    ForEach(0..<3, id: \.self) { idx in
                        switch idx {
                        case 0:
                            ColorView(colorSet: Casual.casualColorSet, colorName: "캐주얼")
                        case 1:
                            ColorView(colorSet: Sunset.sunsetColorSet, colorName: "선셋")
                        case 2:
                            ColorView(colorSet: MidNight.midNightColorSet, colorName: "미드나잇")
                        default:
                            EmptyView()
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .frame(height: 300)
            }

            VStack(alignment: .center) {
                Spacer()

                Button(action: {

                }, label: {
                    ZStack {
                        switch viewModel.index {
                        case 0:
                            NanumSquareEB(text: "캐주얼 색으로 선택할래요!", color: Color.white, size: 15)
                                .padding([.leading, .trailing])
                                .background(Color.teal
                                                .frame(height: 60).cornerRadius(10))
                        case 1:
                            NanumSquareEB(text: "선셋 색으로 선택할래요!", color: Color.white, size: 15)
                                .padding([.leading, .trailing])
                                .background(Color.teal
                                                .frame(height: 60).cornerRadius(10))
                        case 2:
                            NanumSquareEB(text: "미드나잇 색으로 선택할래요!", color: Color.white, size: 15)
                                .padding([.leading, .trailing])
                                .background(Color.teal
                                                .frame(height: 60).cornerRadius(10))
                        default:
                            EmptyView()
                        }
                    }
                })
                    .padding(.bottom, 30)
            }
        }
    }

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
