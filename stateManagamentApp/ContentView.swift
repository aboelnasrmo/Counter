//
//  ContentView.swift
//  stateManagamentApp
//
//  Created by Mohammad Aboelnasr on 07/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var blueCounter = 0
    @State private var greenCounter = 0
    @State private var redCounter = 0

    var body: some View {
        VStack {
            Text("\(blueCounter+greenCounter+redCounter)")
                .font(.system(size: 100,weight: .bold,design: .rounded))
            HStack {
                MyButton(counter: $blueCounter,color: .blue)
                MyButton(counter: $greenCounter, color: .green)
                MyButton(counter: $redCounter, color: .red)
                
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyButton: View {
    @Binding var counter:Int
  
    var color:Color
    var body: some View {
        Button {
            self.counter += 1
            
        } label: {
            Circle()
                .frame(width: 100  ,height: 200)
                .foregroundColor(color)
                .overlay{
                    Text("\(counter)")
                        .foregroundColor(.white)
                        .font(.system(size: 100,weight: .bold,design: .rounded))
                }
            
            
        }
    }
}
