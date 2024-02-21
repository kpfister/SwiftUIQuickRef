//
//  VStack_Nesting.swift
//  SwiftUIQuickRef
//
//  Created by Karl Pfister on 2/13/24.
//

import SwiftUI

struct VStack_Nesting: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("VStack",
                       subtitle: "Nesting",
                       desc: "A VStack can be nested withing another VStack when laying out views",
                       back: .blue, textColor: .white)
            
            VStack {
                Text("VStack inside another VStack")
                Divider()
                Text("This can be helpful. Why?")
                Divider()
                Text("More than 10 views WILL create an error")
            }
            
            .padding()
            .foregroundColor(Color.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue))
            .padding()
        }
        .font(.title)
    }
}

#Preview {
    VStack_Nesting()
}
