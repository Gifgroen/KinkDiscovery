import Inject
import SwiftUI

public struct ChannelListView: View {
  
  public init() {
    /* NOOP */
  }
  
  public var body: some View {
    List {
      ForEach(AllChannels, id: \.id) { item in
        Button(
          action: {
            print("Clicked: \(item.title)")
          },
          label: {
            HStack {
              Text("\(item.title)")
            }
          }
        )
      }
    }
    .enableInjection()
  }
  
#if DEBUG
  @ObserveInjection var inject
#endif
}

#Preview {
  ChannelListView()
}
