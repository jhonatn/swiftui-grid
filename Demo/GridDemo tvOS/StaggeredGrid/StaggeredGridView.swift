import SwiftUI
import OtherGrid

struct StaggeredGridView: View {
    @State var selection: Int = 0
    
    var body: some View {
        OtherGrid(1...69, id: \.self) { index in
            Image("\(index)")
                .resizable()
                .scaledToFit()
        }
        .gridStyle(
            StaggeredGridStyle(tracks: .min(200))
        )
        .navigationBarTitle("Staggered Grid")
    }
}

struct StaggeredGridView_Previews: PreviewProvider {
    static var previews: some View {
        StaggeredGridView()
    }
}
