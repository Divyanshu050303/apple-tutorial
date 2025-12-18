//
//  CircleImage.swift
//  chat-app
//
//  Created by RAC IT on 16/12/25.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
       image.clipShape(Circle()).overlay{
            Circle().stroke(.white,lineWidth: 4)
        }.shadow(radius: 8)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
