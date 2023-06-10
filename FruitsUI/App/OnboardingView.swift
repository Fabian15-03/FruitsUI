//
//  OnboardingView.swift
//  FruitsUI
//
//  Created by Fabian Gonzales  on 10/06/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach( 0 ..< 5) { item in
                Card()
            }// LOOP
        }// TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical , 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
