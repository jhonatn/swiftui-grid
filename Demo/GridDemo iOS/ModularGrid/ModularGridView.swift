import SwiftUI
import OtherGrid

struct ModularGridView: View {
    @State var items: [Item] = (0...100).map { Item(number: $0) }
    @State var showSettings: Bool = false
    @State var style = ModularGridStyle(.vertical, columns: .min(100), rows: .fixed(100))
    
    var body: some View {
        ScrollView(style.axes) {
            OtherGrid(items) { item in
                Card(title: "\(item.number)", color: item.color)
            }
            .padding(8)
 
        }
        .navigationBarTitle("Modular Grid", displayMode: .inline)
        .navigationBarItems(
            trailing:
                HStack {
                    Button(action: { self.addMoreItems() }) {
                        Text("Add items")
                    }
                    
                    Button(action: { self.showSettings = true }) {
                        Image(systemName: "gear")
                    }
                }
        )
        .sheet(isPresented: $showSettings) {
            ModularGridSettingsView(style: self.$style).accentColor(.purple)
        }
        .gridStyle(
             self.style
         )
    }
    
    func addMoreItems() {
        self.items += (items.count...items.count + 99).map { Item(number: $0) }
    }
}

struct ModularGridView_Previews: PreviewProvider {
    static var previews: some View {
        ModularGridView()
    }
}
