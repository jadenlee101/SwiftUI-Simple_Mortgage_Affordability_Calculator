//
//  ContentView.swift
//  Starter project
//
//  Created by Jaden Lee on 2023-05-05.
//

import SwiftUI

struct ContentView: View {
    @State private var income : Int = 0
    @State private var additional : Int = 0
    @State var totalIncome : Int = 0
    @State var next = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                    .ignoresSafeArea()
                ScrollView{
                    Spacer()
                    Text("Simple Mortgage Affordability Calculator")
                        .foregroundColor(.white)
                        .background(.black)
                        .font(.system(size: 33))
                    
                    HStack() {
                        Text("Enter your income (before tax):")
                        Text("$")
                        TextField("Enter here", value: $income, format: .number)
                    }
                    .font(.system(size:33))
                    .padding(30)
                    
                    HStack() {
                        Text("Additional income? (ex. spouse)")
                        Text("$")
                        TextField("Enter here", value: $additional, format: .number)
                        
                    }
                    .font(.system(size:33))
                    .padding(30)
                    
                    
                        Button {
                            next.toggle()
                            totalIncome = income + additional
                            print(totalIncome)
                        } label: {
                            Text("Next!")
                        }
                        .foregroundColor (.white)
                        .background(.black)
                        .font(.system(size: 33))
                        .navigationDestination(isPresented: $next) {
                            ExpenseView()
                        }
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                    
                    
                    
    
                }
            }
        }
        
        
    
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
