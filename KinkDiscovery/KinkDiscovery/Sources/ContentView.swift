//
//  ContentView.swift
//  KinkDiscovery
//
//  Created by Karsten Westra on 24/01/2024.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Image(systemName: "radio")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, Kink!")
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
