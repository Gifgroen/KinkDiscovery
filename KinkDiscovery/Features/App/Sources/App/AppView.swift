import SwiftUI
import Inject
import ChannelList

public struct AppView: View {

  public init() {
    /* NOOP */
  }

  public var body: some View {
    VStack {
      Image(systemName: "radio")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, Kink!")
      ChannelListView()
    }
    .enableInjection()
  }
 
#if DEBUG
  @ObserveInjection var inject
#endif
}

#Preview {
  AppView()
}
