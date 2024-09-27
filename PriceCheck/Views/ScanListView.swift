// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'


import SwiftUI

struct ScanListView: View {
  var scan: PriceScan

  var body: some View {
    NavigationLink(destination: ScanDetailView(scan: scan)){
      HStack{
        Text(scan.item).font(.body)
        
        Spacer()
        // Display price in bold
        Text(String(format: "$%.2f", scan.price))
            .fontWeight(.bold)
        
      }
    }

   }
}

//struct ScanListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScanListView()
//    }
//}
