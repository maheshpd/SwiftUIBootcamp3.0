//
//  ShapeComponent.swift
//  SwiftUIBootcamp
//
//  Created by Mahesh Prasad on 09/04/22.
//

import SwiftUI

struct ShapeComponent: View {
    var body: some View {
        VStack {
            Circle()
    //            .fill(.blue)
    //            .foregroundColor(.orange)
    //            .stroke()
    //            .stroke(Color.blue)
                .stroke(.purple, lineWidth: 5)
            .frame(width: 130, height: 130)
            
            Spacer()
            
            Rectangle()
                .frame(width: 200, height: 200)
                .cornerRadius(20)
                .foregroundColor(.blue)
            
            Spacer()
            
            Capsule()
                .foregroundColor(.orange)
                .frame(width: 200, height: 50)
            
            Spacer()

            
            Ellipse()
                .foregroundColor(.pink)
                .frame(width: 200, height: 50)
        }
            
    }
}

struct ShapeComponent_Previews: PreviewProvider {
    static var previews: some View {
        ShapeComponent()
    }
}
