//
//  ArrowShape.swift
//  Drawing
//
//  Created by Takasur Azeem on 26/03/2022.
//

import SwiftUI

struct Arrow: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.width
        let height = rect.height
        
        path.addLines([
            CGPoint(x: width * 0.4, y: height),
            CGPoint(x: width * 0.4, y: height * 0.4),
            CGPoint(x: width * 0.2, y: height * 0.4),
            CGPoint(x: width * 0.5, y: height * 0.1),
            CGPoint(x: width * 0.8, y: height * 0.4),
            CGPoint(x: width * 0.6, y: height * 0.4),
            CGPoint(x: width * 0.6, y: height)
        ])
        
        path.closeSubpath()
        
        return path
    }
    
}

struct ArrowShape: View {
    var body: some View {
        Arrow()
            .stroke(lineWidth: 20)
        
    }
}

struct ArrowShape_Previews: PreviewProvider {
    static var previews: some View {
        ArrowShape()
    }
}
