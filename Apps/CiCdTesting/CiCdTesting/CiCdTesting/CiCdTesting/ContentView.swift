//
//  ContentView.swift
//  CiCdTesting
//
//  Created by New on 4.12.25..
//

import SwiftUI

struct ContentView: View {
    var text: String = "Testing"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(text)
            Text("Somes")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
