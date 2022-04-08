//
//  ColorAndGradient.swift
//  SwiftUIBootcamp
//
//  Created by Mahesh Prasad on 09/04/22.
//

import SwiftUI

struct ColorAndGradient: View {
    var body: some View {
        HStack{
            Rectangle()
//            .fill(Color("ColorScheme"))
                .fill(LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(10)
//                .foregroundColor()
                 //.ignoresSafeArea()
//                .frame(width: 200, height: 200)
        }
    }
}

struct ColorAndGradient_Previews: PreviewProvider {
    static var previews: some View {
        ColorAndGradient()
            .preferredColorScheme(.dark)
    }
}
