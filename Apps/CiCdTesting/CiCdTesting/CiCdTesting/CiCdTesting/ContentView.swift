//
//  ContentView.swift
//  CiCdTesting
//
//  Created by New on 4.12.25..
//

import SwiftUI

struct ContentView: View {
    var text: String = "Testin"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(text)
            Text("Some")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
