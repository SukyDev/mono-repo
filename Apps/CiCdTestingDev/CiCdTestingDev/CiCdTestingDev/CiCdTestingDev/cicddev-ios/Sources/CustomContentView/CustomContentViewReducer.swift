//
//  ContentViewReducer.swift
//  cicddev-ios
//
//  Created by New on 8.12.25..
//

import Foundation
import ComposableArchitecture

@Reducer
public struct ContentViewReducer {
    @ObservableState
    public struct State: Equatable {
        public var onAppear: Bool? = false

        public init() {}
    }

    public enum Action {
        case onAppear
    }

    public init() {}

    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                case .onAppear:
                    state.onAppear = true

                    return .none
            }
        }
    }
}

