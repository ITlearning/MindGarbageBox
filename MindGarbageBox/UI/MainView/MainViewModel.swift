//
//  MainViewModel.swift
//  MindGarbageBox
//
//  Created by 인병윤 on 2022/07/07.
//

import UIKit
import SwiftUI
import Combine

extension MainView {
    enum ColorType {
        case Casual
        case Sunset
        case Pop
        case Midnight
        case SpringField
    }
}

extension MainView {
    class ViewModel: ObservableObject {
        @AppStorage("FirstLaunch") var firstLaunch: Bool = false
        @Published var index: Int = 0
    }
}
