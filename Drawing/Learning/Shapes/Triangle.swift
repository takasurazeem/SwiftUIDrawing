//
//  Triangle.swift
//  Drawing
//
//  Created by Takasur Azeem on 14/03/2022.
//

import SwiftUI

struct TriangleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}

struct Triangle: View {
    var body: some View {
        TriangleShape()
            .stroke(.green, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
            .frame(width: 300, height: 300)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Triangle()
    }
}
