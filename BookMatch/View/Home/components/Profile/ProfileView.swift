//
//  SwiftUIView.swift
//  BookMatch
//
//  Created by noguchi.hiroto on 2024/05/13.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Image("loading")
                .resizable()
                .frame(width: screenWidthRatio * 392, height: screenHeightRatio * 490)
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ProfileView()
}
