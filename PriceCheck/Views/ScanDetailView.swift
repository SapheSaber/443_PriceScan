//
//  ScanDetailView.swift
//  PriceCheck
//
//  Created by Anqi Chen on 9/26/24.
//

import SwiftUI

struct ScanDetailView: View{
  var scan: PriceScan
  
  var body: some View{
    Text(scan.item)
      .font(.largeTitle)
      .fontWeight(.bold)
    Text("AS of: \(scan.date)")
      .foregroundColor(.gray)
      .font(.system(size: 18))
      .padding(.top, 5)
      .padding(.bottom, 5)
    
    Text(String(format: "$%.2f", scan.price))
      .font(.system(size: 25))
  }
}
