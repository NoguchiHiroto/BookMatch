//
//  HomeView.swift
//  BookMatch
//
//  Created by noguchi.hiroto on 2024/05/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
//        GeometryReader { ge
            VStack {
                Spacer().frame(height: screenHeightRatio * 45)
                HeaderView()
                Spacer().frame(height: screenHeightRatio * 18.29)
                ProfileView()
                Spacer()
            }
//        }
    }
}

#Preview {
    HomeView()
}

