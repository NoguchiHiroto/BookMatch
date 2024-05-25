//
//  SecondProfile.swift
//  BookMatch
//
//  Created by noguchi-star2022 on 2024/05/19.
//

import SwiftUI

struct FourthProfile: View {
    var body: some View {
      VStack {
        Spacer();
        HStack {
          Spacer();
          Text("本棚の登録数")
            .font(.system(size: screenWidthRatio * 24))
          Spacer().frame(width: screenWidthRatio * 33)
        }
        HStack {
          Spacer();
          Text("10")
            .font(.system(size: screenWidthRatio * 24))
          Spacer().frame(width: screenWidthRatio * 33)
        }
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
          Text("読書をする")
            .font(.system(size: screenWidthRatio * 14))
//                              .bold()
            .fixedSize(horizontal:false, vertical:true)
            .frame(width: screenWidth * 0.4)
            
            
          Spacer()
        }
        HStack {
          Spacer().frame(width: screenWidthRatio * 41)
          Text("好きなジャンル")
            .font(.system(size: screenWidthRatio * 14))
//                              .bold()
            .fixedSize(horizontal:false, vertical:true)
          
            .frame(width: screenWidth * 0.4)
            
          Text("ミステリー")
            .font(.system(size: screenWidthRatio * 14))
//                              .bold()
            .fixedSize(horizontal:false, vertical:true)
          Spacer()
        }
        HStack {
          Spacer().frame(width: screenWidthRatio * 27)
          Text("好きな著者")
            .font(.system(size: screenWidthRatio * 14))
//                              .bold()
            .fixedSize(horizontal:false, vertical:true)
            .frame(width: screenWidth * 0.4)
          Spacer().frame(width: screenWidthRatio * 23)
          Text("東野圭吾")
            .font(.system(size: screenWidthRatio * 14))
//                              .bold()
            .fixedSize(horizontal:false, vertical:true)
          Spacer()
        }
      }
    }
}

#Preview {
    FourthProfile()
}
