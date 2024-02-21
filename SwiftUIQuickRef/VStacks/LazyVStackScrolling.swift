//
//  LazyVStackScrolling.swift
//  SwiftUIQuickRef
//
//  Created by Karl Pfister on 2/21/24.
//

import SwiftUI

struct LazyVStackScrolling: View {
    @State private var teams = MockData.getTeams()
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("LazyVStack", subtitle: "With ScrollView", desc: "The LasyVstack is best used with many vies that scroll off the screen. \"Lazy\" means views off screen are not created unless shown. This increases performance.")
            
            ScrollView {
                LazyVStack(spacing: 5) {
                    ForEach(teams) { team in
                        Section {
                            ForEach(team.people) { person in
                                Image("\(person.imageName)")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                            }
                        } header: {
                            
                        }
                        
                    }
                }
            }
        }
    }
}

#Preview {
    LazyVStackScrolling()
}
