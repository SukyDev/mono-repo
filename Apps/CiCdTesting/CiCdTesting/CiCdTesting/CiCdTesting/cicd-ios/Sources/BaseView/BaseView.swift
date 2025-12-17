//
//  BaseView.swift
//  cicd-ios
//
//  Created by New on 5.12.25..
//

import SwiftUI
import ComposableArchitecture

public struct BaseView: View {
    @Bindable private var store: StoreOf<BaseReducer>

    public init(store: StoreOf<BaseReducer>) {
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
