//
//  ContentViewSnapshotTests.swift
//  cicddev-ios
//
//  Created by New on 12.12.25..
//

import Foundation
import XCTestSupport
import SnapshotTesting
import ComposableArchitecture
@testable import CustomContentView

@MainActor
final class ContentViewSnapshotTests: DefaultSnapshotTestCase {

    func testAppearance() {
        withDependencies {
            $0.mainQueue = .immediate
        } operation: {
            let store: StoreOf<ContentViewReducer> = .init(
                initialState: ContentViewReducer.State()
            ) {
                ContentViewReducer()
            }

            let customContentView = CustomContentView(store: store)

            snapshotTest(view: customContentView, devices: [.iPhoneSe])
        }
    }
}

