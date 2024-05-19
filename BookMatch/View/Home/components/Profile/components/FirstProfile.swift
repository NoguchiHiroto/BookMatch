//
//  FirstProfile.swift
//  BookMatch
//
//  Created by noguchi-star2022 on 2024/05/19.
//

import SwiftUI

struct FirstProfile: View {
    var body: some View {
      VStack {
        Spacer();
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
        Spacer().frame(height: screenHeightRatio * 20);
        HStack {
            Spacer().frame(width: screenWidthRatio * 10);
            Image(systemName: "mappin.and.ellipse")
                .symbolRenderingMode(.palette)
                .foregroundStyle(
                    .linearGradient(
                        colors: [.red, .yellow, .green],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .font(.system(size: 30));
            Spacer().frame(width: screenWidthRatio * 5);
            Text("距離").font(.system(size: screenWidthRatio * 20)).bold();
            Spacer().frame(width: screenWidthRatio * 10);
            Text("10").font(.system(size: screenWidthRatio * 20)).bold();
            Text("km").font(.system(size: screenWidthRatio * 20)).bold();
            Spacer()
        }
        Spacer().frame(height: screenHeightRatio * 13);
        HStack {
            let homeTownFontSize: CGFloat = 14;
            Spacer().frame(width: screenWidthRatio * 6)
            Text("茨城県").font(.system(size: screenWidthRatio * homeTownFontSize)).bold();
            Spacer().frame(width: screenWidthRatio * 10);
            Text("/").font(.system(size: screenWidthRatio * homeTownFontSize)).bold();
            Spacer().frame(width: screenWidthRatio * 10);
            Text("神奈川県").font(.system(size: screenWidthRatio * 14)).bold();
            Spacer()
        }
      }
    }
}

#Preview {
    FirstProfile()
}
