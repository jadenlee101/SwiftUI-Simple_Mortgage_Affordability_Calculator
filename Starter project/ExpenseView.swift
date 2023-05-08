//
//  ExpenseView.swift
//  Starter project
//
//  Created by Jaden Lee on 2023-05-07.
//

import SwiftUI

struct ExpenseView: View {
    var totalIncome : Int
    
    @State private var entertainment = 0
    @State private var groceries = 0
    @State private var carpayments = 0
    @State private var others = 0
    @State var totalExpense = 0
    @State var submit = false
    @State var sum = 0
    
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
                            .keyboardType(.numberPad)
                    }
                    .font(.system(size:33))
                    .padding(10)
                    
                    HStack() {
                        Text("Entertainments")
                        
                        Text("$")
                        TextField("Enter here", value: $entertainment, format: .number)
                            .keyboardType(.numberPad)
                    }
                    .font(.system(size:33))
                    .padding(10)
                    
                    HStack() {
                        Text("Groceries")
                        
                        Text("$")
                        TextField("Enter here", value: $groceries, format: .number)
                            .keyboardType(.numberPad)
                    }
                    .font(.system(size:33))
                    .padding(10)
                    
                    HStack() {
                        Text("Others")
                        
                        Text("$")
                        TextField("Enter here", value: $others, format: .number)
                            .keyboardType(.numberPad)
                    }
                    .font(.system(size:33))
                    .padding(10)
                    
                    Button {
                        submit.toggle()
                        totalExpense = entertainment + groceries + carpayments + others
                        sum = totalIncome - totalExpense
                        print("totoal income : \(totalIncome)")
                        print("total expense: \(totalExpense)")
                        print(sum)
                    } label: {
                        Text("Next!")
                    }
                    .foregroundColor (.white)
                    .background(.black)
                    .font(.system(size: 33))
                    .navigationDestination(isPresented: $submit) {
                        SummaryView(netIncome: sum)
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
            }
        }
        
    }
}

struct ExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        //ExpenseView(totalIncome: 0)
        ContentView()
    }
}
