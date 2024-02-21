//
//  VStack_Intro.swift
//  SwiftUIQuickRef
//
//  Created by Karl Pfister on 2/13/24.
//

import SwiftUI

struct VStack_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("VStack",
                       subtitle: "Introduction", desc: "A Vstack will vertically arrange other views within it",
                       back: .blue,
                       textColor: .white)
            
            Text("View 1")
            Text("View 2")
            Text("View 3")
            Text("View 4")
            Text("View 5")
            Text("View 6")
            Text("View 7")
            Text("View 8")
            Text("View 9")
            // MAX of 10 views in a Vstack
        }
        .font(.title)
    }
}

#Preview {
    VStack_Intro()
}
