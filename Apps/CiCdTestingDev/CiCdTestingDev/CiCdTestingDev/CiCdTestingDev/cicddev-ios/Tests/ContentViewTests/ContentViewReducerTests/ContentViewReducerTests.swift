//
//  ContentViewReducerTests.swift
//  cicddev-ios
//
//  Created by New on 8.12.25..
//

import ComposableArchitecture
import XCTest
@testable import CustomContentView

final class CustomContentViewReducerTests: XCTestCase {

    func testOnAppear() async {
        let store = await TestStore(
            initialState: ContentViewReducer.State()
        ) {
            ContentViewReducer()
        }

        await store.send(.onAppear) {
            $0.onAppear = true
        }
    }
}


