//
//  ContentView.swift
//  cicddev-ios
//
//  Created by New on 8.12.25..
//

import SwiftUI
import Combine
import ComposableArchitecture

public struct CustomContentView: View {
    @ComposableArchitecture.Bindable private var store: StoreOf<ContentViewReducer>

    public init(store: StoreOf<ContentViewReducer>) {
        self.store = store
    }

    var text: String = "Test texts"
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
            Text(text)
        }
        .padding()
    }
}
