import SwiftUI
import OtherGrid

struct StaggeredGridView: View {
    var body: some View {
        ScrollView {
            OtherGrid(1...69, id: \.self) { index in
                Image("\(index)")
                    .resizable()
                    .scaledToFit()
            }
        }
        .gridStyle(
            StaggeredGridStyle(tracks: 3, spacing: 1)
        )
    }
}

struct StaggeredGridView_Previews: PreviewProvider {
    static var previews: some View {
        StaggeredGridView()
    }
}

