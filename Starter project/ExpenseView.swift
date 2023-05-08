//
//  ExpenseView.swift
//  Starter project
//
//  Created by Jaden Lee on 2023-05-07.
//

import SwiftUI

struct ExpenseView: View {
    @State private var entertainment = 0
    @State private var groceries = 0
    @State private var carpayments = 0
    @State private var others = 0
    @State var totalExpense = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView{
                    Text("Enter Your Monthly Expenses")
                        .foregroundColor(.white)
                        .background(.black)
                        .font(.system(size: 33))
                    
                    HStack(alignment: .center) {
                        Text("Car loans, insurance ")
                        Text("$")
                        TextField("Enter here", value: $carpayments, format: .number)
                    }
                    .font(.system(size:33))
                    .padding(10)
                    
                    HStack() {
                        Text("Entertainments")
                        
                        Text("$")
                        TextField("Enter here", value: $entertainment, format: .number)
                    }
                    .font(.system(size:33))
                    .padding(10)
                    
                    HStack() {
                        Text("Groceries")
                        
                        Text("$")
                        TextField("Enter here", value: $groceries, format: .number)
                    }
                    .font(.system(size:33))
                    .padding(10)
                    
                    HStack() {
                        Text("Others")
                        
                        Text("$")
                        TextField("Enter here", value: $others, format: .number)
                    }
                    .font(.system(size:33))
                    .padding(10)
                }
            }
        }
        
    }
}

struct ExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseView()
    }
}
