//
//  SecondProfile.swift
//  BookMatch
//
//  Created by noguchi-star2022 on 2024/05/19.
//

import SwiftUI

struct SecondProfile: View {
    var body: some View {
      VStack {
        Spacer();
        HStack {
            Spacer().frame(width: screenWidthRatio * 37);
            Text("星の王子様").font(.system(size: screenWidthRatio * 40)).bold();
            Spacer();
        }
        Spacer().frame(height: screenHeightRatio * 13);
        HStack {
            Spacer().frame(width: screenWidthRatio * 37);
            Text("サン＝テグジュペリ")
                .font(.system(size: screenWidthRatio * 40)).bold()
//                                        .foregroundColor(.white);
            Spacer();
        }
        Spacer().frame(height: screenHeightRatio * 20);
        HStack {
            Spacer().frame(width: screenWidthRatio * 22);
            Text("北岡直紀")
                .font(.system(size: screenWidthRatio * 24))
                .bold();
            Spacer()
                .frame(width: screenWidthRatio * 30);
            Text("23")
                .font(.system(size: screenWidthRatio * 24))
                .bold();
            Spacer();
        };
        Spacer().frame(height: screenHeightRatio * 23);
        HStack {
            Spacer().frame(width: screenWidthRatio * 23);
            Text("北岡直紀です。芸術に情熱を燃やし、常に新しいことに挑戦しています。")
            .font(.system(size: screenWidthRatio * 22))
            .bold()
            .fixedSize(horizontal: false, vertical: true);
        }
      }
    }
}

#Preview {
    SecondProfile()
}
