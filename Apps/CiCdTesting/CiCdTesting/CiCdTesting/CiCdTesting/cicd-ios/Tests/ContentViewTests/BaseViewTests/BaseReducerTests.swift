//
//  BaseReducerTests.swift
//  cicd-ios
//
//  Created by New on 17. 12. 2025..
//

import ComposableArchitecture
import XCTest
@testable import BaseView

final class CustomContentViewReducerTests: XCTestCase {

    func testOnAppear() async {
        let store = await TestStore(
            initialState: BaseReducer.State()
        ) {
            BaseReducer()
        }

        await store.send(.onAppear) {
            $0.onAppear = true
        }
    }
}
