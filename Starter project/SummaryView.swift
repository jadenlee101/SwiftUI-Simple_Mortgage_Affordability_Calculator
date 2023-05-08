//
//  summaryView.swift
//  Starter project
//
//  Created by Jaden Lee on 2023-05-08.
//

import SwiftUI

struct SummaryView: View {
    var netIncome : Int
    
    var body: some View {
        Text("net income \(netIncome)")
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView(netIncome: 0)
    }
}
