//
//  ContentView.swift
//  SwiftUIBootcamp
//
//  Created by Mahesh Prasad on 09/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello Mahesh, Welcome to the best SwiftUI Bootcamp ever!!")
            .font(.system(size: 32, weight: .semibold, design: .serif))
            .fontWeight(.heavy)
            .foregroundColor(.pink)
            .multilineTextAlignment(.center)
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
