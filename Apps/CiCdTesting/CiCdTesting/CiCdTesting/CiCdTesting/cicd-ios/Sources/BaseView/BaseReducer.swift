//
//  BaseReducer.swift
//  cicd-ios
//
//  Created by New on 17. 12. 2025..
//

import Foundation
import ComposableArchitecture

@Reducer
public struct BaseReducer {
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
