//
//  LazyStackAlignment.swift
//  SwiftUIQuickRef
//
//  Created by Karl Pfister on 2/21/24.
//

import SwiftUI

struct LazyStackAlignment: View {
    var body: some View {
        VStack(spacing:10) {
            HeaderView("LazyVStack", subtitle: "Alignment", desc: "Since LazyVStacks are push out views (Horizontally) the alignment parameter could be useful")
            
            Text("Leading")
            
            LazyVStack(alignment: .leading, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.border(.yellow, width: 2)
            
            Text("Trailing")
            LazyVStack(alignment: .trailing, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.border(.red, width: 2)
        }.font(.title)
    }
}

#Preview {
    LazyStackAlignment()
}
