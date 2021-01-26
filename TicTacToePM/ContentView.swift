//
//  ContentView.swift
//  TicTacToePM
//
//  Created by P.M. Class on 1/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        NavigationView {
        Home()
            .navigationTitle("Tic Tac Toe")
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}
struct Home :  View {
    var body: some View {
        VStack {
            
            
            
            LazyVGrid(columns:Array(repeating:GridItem(.flexible(),spacing: 15), count: 3),spacing: 15) {
                
                ForEach(0..<9, id: \.self) {index in
                    
                    Color.pink
                        .frame(width: getWidth(), height: getWidth())
                        .cornerRadius(30)
               
                }
            }
           
            .padding(15)
            
        }
        
    }
    

    
    
    
    
    //Used to calculate width.
    
    func getWidth() -> CGFloat {
        let width = UIScreen.main.bounds.width - (30 + 30)
        
        return width / 3
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
