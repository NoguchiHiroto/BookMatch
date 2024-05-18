//
//  HomeView.swift
//  BookMatch
//
//  Created by noguchi.hiroto on 2024/05/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Spacer().frame(height: screenHeightRatio * 45)
            HeaderView()
            ProfileView()
            Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    HomeView()
}

