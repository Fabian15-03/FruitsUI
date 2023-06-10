//
//  Card.swift
//  FruitsUI
//
//  Created by Fabian Gonzales  on 10/06/23.
//

import SwiftUI

struct Card: View {
    // MARK: - PROPIEDADES
    @State private var isAnimting : Bool = false
    
    
    // MARK: - BODY
    
    
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                //: FRUIT IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8 , x: 6 , y: 8)
                    .scaleEffect(isAnimting ? 1.0 : 0.6)
                //: FRUIT TITLE
                Text("Blueberry!")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2 , x: 2 , y: 2)
                //: FRUIT DESCRIPTION
                Text("Blueberries is a sweet fruit, nutrition and wildly popular all over the world.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal , 16)
                    .frame(maxWidth: 480)
                    .font(.headline)
                    .fontWeight(.bold)
                //: FRUIT BUTTON
                ButtonView()
                
            }//: VSTACK
        } //: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimting = true
            }
        }
        .frame(minWidth: 0 , maxWidth: .infinity , minHeight: 0 , maxHeight: .infinity , alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"),Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal , 20)
    }
}

// MARK: - PREVIEW

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
