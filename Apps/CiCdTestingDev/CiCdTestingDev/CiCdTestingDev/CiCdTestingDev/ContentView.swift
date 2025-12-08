//
//  ContentView.swift
//  CiCdTestingDev
//
//  Created by New on 4.12.25..
//

import SwiftUI

struct ContentView: View {
    var text: String = "Test tex"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(text)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
