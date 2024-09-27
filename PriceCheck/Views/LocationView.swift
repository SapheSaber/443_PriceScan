//
//  LocationView.swift
//  PriceCheck
//
//  Created by Anqi Chen on 9/26/24.
//

import SwiftUI
struct LocationView: View {
  var location: Location
  
  var body: some View {
    Section(header: Text(location.name).fontWeight(.bold)){
      // loop all of the scans for location
      ForEach(location.scans.sorted(by: {$0 < $1})){
        scan in ScanListView(scan: scan)
      }
    }
  }
  
}

//struct LocationView_Previews: PreviewProvider {
//  static var previews: some View {
//    LocationView()
//  }
//}
