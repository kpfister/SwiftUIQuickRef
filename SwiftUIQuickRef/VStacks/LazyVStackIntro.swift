//
//  LazyVStack.swift
//  SwiftUIQuickRef
//
//  Created by Karl Pfister on 2/21/24.
//

import SwiftUI

struct LazyVStackIntro: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("Lazy V Stack", subtitle: "Intro", desc: "When using the lazyVStack by itself, you wont notice much of a difference from a VStack")
                .layoutPriority(1)
            
            Text("LazyVStack")
            LazyVStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.border(.red, width: 2)
            
            Text("Vstack")
            VStack(spacing:10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.border(.red, width: 2)
            
            Text("Notice the LazyVStack pushes out HORIZONTALLY.")
        }.font(.title)
    }
}

#Preview {
    LazyVStackIntro()
}
