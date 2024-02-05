//
//  ContentView.swift
//  KinkDiscovery
//
//  Created by Karsten Westra on 24/01/2024.
//

import SwiftUI
import App

struct ContentView: View {
  var body: some View {
    AppView()
      .enableInjection()
  }

  #if DEBUG
  @ObserveInjection var forceRedraw
  #endif
}

#Preview {
  ContentView()
}
