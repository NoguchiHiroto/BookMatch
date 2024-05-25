//
//  SecondProfile.swift
//  BookMatch
//
//  Created by noguchi-star2022 on 2024/05/19.
//

import SwiftUI

struct FifthProfile: View {
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
        Spacer().frame(height: screenHeightRatio * 23);
        HStack {
          Text("〇〇")
            .font(.system(size: screenWidthRatio * 14))
//                              .bold()
            .fixedSize(horizontal:false, vertical:true)
            .frame(width: screenWidth * 0.4)
            
            
          Spacer()
        }
        HStack {
          Spacer().frame(width: screenWidthRatio * 27)
          Text("〇〇")
            .font(.system(size: screenWidthRatio * 14))
//                              .bold()
            .fixedSize(horizontal:false, vertical:true)
          
            .frame(width: screenWidth * 0.4)
            
          Text("〇〇")
            .font(.system(size: screenWidthRatio * 14))
//                              .bold()
            .fixedSize(horizontal:false, vertical:true)
          Spacer()
        }
        HStack {
          Spacer().frame(width: screenWidthRatio * 27)
          Text("〇〇")
            .font(.system(size: screenWidthRatio * 14))
//                              .bold()
            .fixedSize(horizontal:false, vertical:true)
            .frame(width: screenWidth * 0.4)
          Text("〇〇")
            .font(.system(size: screenWidthRatio * 14))
//                              .bold()
            .fixedSize(horizontal:false, vertical:true)
          Spacer()
        }
      }
    }
}

#Preview {
    FifthProfile()
}
