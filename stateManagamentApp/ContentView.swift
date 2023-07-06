//
//  ContentView.swift
//  stateManagamentApp
//
//  Created by Mohammad Aboelnasr on 07/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    var body: some View {
        Button {
            self.counter += 1
        } label: {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.red)
                .overlay{
                    Text("\(counter)")
                        .foregroundColor(.white)
                        .font(.system(size: 100,weight: .bold,design: .rounded))
                }
              
                
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
