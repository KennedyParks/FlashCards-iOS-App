//
//  CardFront.swift
//  FlashCards
//
//  Created by Kennedy Parks on 10/9/22.
//

import SwiftUI

struct CardFront: View {
    @Binding var degree : Double
    let textContent:String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(.green.opacity(0.5), lineWidth: 10)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .fill(.green.opacity(0.1))
                .padding()
              
            VStack{
                Text("Question:")
                    .font(Font.custom("HelveticaNeue Bold", size: 30))
                
                
                Text(textContent)
                    .lineLimit(10)
                    .font(Font.custom("HelveticaNeue Bold", size: 20))
                    .multilineTextAlignment(.center)
                    .padding(25)
                
            }
 
        }
        
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y:1, z:0))
    }
}
 
  
