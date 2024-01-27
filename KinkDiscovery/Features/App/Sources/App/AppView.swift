import SwiftUI
import Inject

public struct AppView: View {

  @ObserveInjection var inject

  public init() {
    /* NOOP */
  }

  public var body: some View {
    VStack {
      Image(systemName: "radio")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, Kink!")
    }
    .padding()
    .enableInjection()
  }
}

#Preview {
  AppView()
}
