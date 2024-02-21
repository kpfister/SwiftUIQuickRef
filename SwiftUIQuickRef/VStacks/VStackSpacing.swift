//
//  VStackSpacing.swift
//  SwiftUIQuickRef
//
//  Created by Karl Pfister on 2/13/24.
//

import SwiftUI

struct VStackSpacing: View {
    var body: some View {
        VStack(spacing:80) {
            Text("VStack")
                .font(.largeTitle)
            
            Text("Spacing")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("The VStack initializer allows you to set the spacing beween all the views inside the VStack")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .font(.title)
                .foregroundColor(.white)
            
            Image(systemName: "arrow.up.and.down.circle.fill")
                .font(.largeTitle)
            
            Text("The spacing here between all views is 80.")
                .font(.title)
        }
    }
}

#Preview {
    VStackSpacing()
}
