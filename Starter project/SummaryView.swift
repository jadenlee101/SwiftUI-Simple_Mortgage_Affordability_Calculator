//
//  summaryView.swift
//  Starter project
//
//  Created by Jaden Lee on 2023-05-08.
//

import SwiftUI

struct SummaryView: View {
    var netIncome : Int
    var mortgageAmount : Int
    @State private var reset = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Your net income $\(netIncome)")
//                    .foregroundColor(.white)
//                    .background(.black)
                    .font(.system(size: 33))
                    .padding(.all)
                Text("You can afford $\(mortgageAmount)")
                    .foregroundColor(.white)
                    .background(.black)
                    .font(.system(size: 33))
                    .padding(.all)
                
                Spacer()
                Button {
                    reset.toggle()
                } label: {
                    Text("Reset")
                        .foregroundColor(.white)
                        .background(.black)
                        .font(.system(size: 33))
                        .padding(.all)
                }
                .navigationDestination(isPresented: $reset) {ContentView()}
                
                
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
