//
//  BaseView.swift
//  cicd-ios
//
//  Created by New on 5.12.25..
//

import SwiftUI

public struct BaseView: View {
    var text: String = "Hello world"

    @available(iOS 13.0, *)
    public var body: some View {
        Text(text)
    }
}
