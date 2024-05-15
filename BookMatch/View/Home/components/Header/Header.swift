//
//  Header.swift
//  BookMatch
//
//  Created by noguchi.hiroto on 2024/05/13.
//

import SwiftUI
import SwiftData

struct HeaderView: View {
var body: some View {
    HStack() {
        Spacer().frame(width: screenWidthRatio * 6)
        Image("logo")
            .resizable()
            .frame(width: screenWidthRatio * 120, height: screenWidthRatio * 49)
        Spacer().frame(width: screenWidthRatio * 179)
        Image("notification")
        Spacer().frame(width: screenWidthRatio * 21)
        Image("options")
        Spacer()
    }
}
}
#Preview {
    HeaderView()
}
