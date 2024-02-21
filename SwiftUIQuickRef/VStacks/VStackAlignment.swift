//
//  VStackAlignment.swift
//  SwiftUIQuickRef
//
//  Created by Karl Pfister on 2/13/24.
//

import SwiftUI

struct VStackAlignment: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("VStack")
                .font(.largeTitle)
            Text("Alignment")
                .font(.title)
                .foregroundStyle(.gray)
            Text("By default, views in a VStack are CENTER aligned.")
                .font(.title)
                .background(.blue)
                .foregroundStyle(.white)
            /// Leading
            VStack(alignment: .leading, spacing: 40) {
                Text("Leading alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.left")
            }
            .padding()
            .foregroundStyle(.white)
            .background(RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.blue))
            .padding()
            
            /// Trailing
            VStack(alignment: .trailing, spacing: 40) {
                Text("Trailing Alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.right")
            }
            .padding()
            .foregroundStyle(.white)
            .background(RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.blue))
            .padding()
        }
    }
}

#Preview {
    VStackAlignment()
}
