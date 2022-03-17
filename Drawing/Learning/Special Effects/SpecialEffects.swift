//
//  SpecialEffects.swift
//  Drawing
//
//  Created by Takasur Azeem on 17/03/2022.
//

import SwiftUI

struct SpecialEffects: View {
    
    @State private var amount = 0.0
    
    var body: some View {
        /*
         Acts as a filter on an image or view
         */
//        Image("test")
//            .colorMultiply(.green)
        /*
         Blends colors so overlaping colors make up a new color
         */
        /*
         VStack {
             ZStack {
                 Circle()
                     .fill(Color(red: 1, green: 0, blue: 0))
                     .frame(width: 200 * amount)
                     .offset(x: -50, y: -80)
                     .blendMode(.screen)
                 
                 Circle()
                     .fill(Color(red: 0, green: 1, blue: 0))
                     .frame(width: 200 * amount)
                     .offset(x: 50, y: -80)
                     .blendMode(.screen)
                 
                 Circle()
                     .fill(Color(red: 0, green: 0, blue: 1))
                     .frame(width: 200 * amount)
                     .blendMode(.screen)
             }
             .frame(width: 300, height: 300)
             
             Slider(value: $amount)
                 .padding()
         }
         .frame(maxWidth: .infinity, maxHeight: .infinity)
         .background(.black)
         .ignoresSafeArea()
         */
        /*
         Blurs the image when slider is at 0, reveals it fully when moved at full right
         */
        VStack {
            Image("test")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .saturation(amount)
                .blur(radius: (1 - amount) * 20)
            
            Slider(value: $amount)
        }
    }
}

struct SpecialEffects_Previews: PreviewProvider {
    static var previews: some View {
        SpecialEffects()
    }
}
