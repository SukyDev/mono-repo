//
//  CiCdTestingDevApp.swift
//  CiCdTestingDev
//
//  Created by New on 4.12.25..
//

import SwiftUI
import ComposableArchitecture
import cicddev_ios
import CustomContentView

@main
struct CiCdTestingDevApp: App {
    let store = Store(initialState: ContentViewReducer.State()) {
        ContentViewReducer()
    }

    var body: some Scene {
        WindowGroup {
            CustomContentView(store: store)
        }
    }
}
