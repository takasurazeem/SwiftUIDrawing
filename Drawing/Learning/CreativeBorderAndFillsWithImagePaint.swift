//
//  CreativeBorderAndFillsWithImagePaint.swift
//  Drawing
//
//  Created by Takasur Azeem on 14/03/2022.
//

import SwiftUI

struct CreativeBorderAndFillsWithImagePaint: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .frame(width: 300, height: 300)
                .border(ImagePaint(image: Image("KohToor"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5), scale: 0.1), width: 30)
            Capsule()
                .strokeBorder(ImagePaint(image: Image("KohToor"), scale: 0.1), lineWidth: 20)
                .frame(width: 300, height: 300)
        }
    }
}

struct CreativeBorderAndFillsWithImagePaint_Previews: PreviewProvider {
    static var previews: some View {
        CreativeBorderAndFillsWithImagePaint()
    }
}
