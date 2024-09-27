//
//  ScanView.swift
//  PriceCheck
//
//  Created by Anqi Chen on 9/26/24.
//

import SwiftUI

struct ScanView: View {
    let locationScans = Bundle.main.decode([Location].self, from: "scan_api_data.json").sorted(by: { $0 < $1 })
  
    var body: some View {
      NavigationView{
        List {
          // loop through each location
          ForEach(locationScans) {
            // using LocationView to display each location
            location in LocationView(location: location)
          }
        }.navigationTitle("Scans")
      }

    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
