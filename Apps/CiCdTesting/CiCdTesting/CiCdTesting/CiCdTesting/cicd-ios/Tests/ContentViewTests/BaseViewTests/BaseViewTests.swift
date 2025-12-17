//
//  BaseViewTests.swift
//  cicd-ios
//
//  Created by New on 5.12.25..
//

import Foundation
import XCTestSupport
import SnapshotTesting
import ComposableArchitecture
@testable import BaseView

@MainActor
final class BaseViewTests: DefaultSnapshotTestCase {

    func testAppearance() {
        withDependencies {
            $0.mainQueue = .immediate
        } operation: {
            let store: StoreOf<BaseReducer> = .init(
                initialState: BaseReducer.State()
            ) {
                BaseReducer()
            }

            let baseView = BaseView(store: store)

            snapshotTest(view: baseView, devices: [.iPhoneSe])
        }
    }
}
