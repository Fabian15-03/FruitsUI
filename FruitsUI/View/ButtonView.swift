//
//  ButtonView.swift
//  FruitsUI
//
//  Created by Fabian Gonzales  on 10/06/23.
//

import SwiftUI

struct ButtonView: View {
    // MARK: - PROPIERTIES
    
    // MARK: - BODY
    
    
    
    
    var body: some View {
        Button(action: {
            print("Boton presionado")
        }) {
            HStack (spacing: 8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal , 25)
            .padding(.vertical , 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        } // BUTTON
        .accentColor(Color.white)
    }
    
    // MARK: - PREVIEW
    
    
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .previewLayout(.sizeThatFits)
    }
}
