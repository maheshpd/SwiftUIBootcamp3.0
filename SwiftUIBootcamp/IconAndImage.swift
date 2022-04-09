//
//  IconAndImage.swift
//  SwiftUIBootcamp
//
//  Created by Mahesh Prasad on 09/04/22.
//

import SwiftUI

struct IconAndImage: View {
    var body: some View {
        Image(systemName: "person.circle.fill")
            .resizable()
//            .font(.largeTitle)
//            .imageScale(.large)
//            .font(.system(size: 200))
//            .foregroundColor(.blue)
            .foregroundColor(Color("ColorScheme"))
            .scaledToFit()
            .frame(width: 200, height: 100)
            .clipped()
    }
}

struct IconAndImage_Previews: PreviewProvider {
    static var previews: some View {
        IconAndImage()
            .preferredColorScheme(.dark)
    }
}
