//
//  ContentView.swift
//  BookMatch
//
//  Created by noguchi.hiroto on 2024/05/13.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
        GeometryReader {geo in
            VStack {
//                Text("safeArea: \(screenHeightRatio * 45)")
//                Text("allArea: \(geo.size.height)")
                HomeView()
                Spacer()
            }
            
        }.edgesIgnoringSafeArea(.all)
    }

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
