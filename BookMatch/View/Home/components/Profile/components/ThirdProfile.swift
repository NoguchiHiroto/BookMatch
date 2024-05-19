//
//  ThirdProfile.swift
//  BookMatch
//
//  Created by noguchi-star2022 on 2024/05/19.
//

import SwiftUI
struct CircleImageWithText: View {
  var imageName: String;
  var size: CGFloat;
  var title: String;
  var author: String;
    var body: some View {
      ZStack(alignment: .topLeading) {
        switch(size) {
          case 200:
            HStack {
              Spacer()
              Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: screenWidthRatio * size, height: size)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
              Spacer();
            }
          default:
            HStack {
              Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: size, height: size)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
              Spacer();
            }
        }
        
        HStack {
          Spacer().frame(width: (size == 200 ? screenWidth : (size == 180 ? size * 0.5: screenWidthRatio * (size * 0.3))), height: screenHeightRatio * size * 0.5);
          VStack {
            Spacer().frame(width: screenWidthRatio * size * 0.5, height: screenHeightRatio * size * 0.5)
            HStack {
              Text(title)
                .font(.system(size: size * 0.12))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .minimumScaleFactor(10)
                .frame(width: (size == 200 ? (screenWidthRatio * size) : (screenWidthRatio * size * 0.7)))
                .fixedSize(horizontal: false, vertical: true) // 折り返しを有効にする
              Spacer()
            }
            HStack {
              Text(author)
                .font(.system(size: size * 0.12))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .minimumScaleFactor(10)
                .frame(width: screenWidthRatio * size)
              Spacer()
            }
          }.frame(width: size == 200 ? screenWidth: (screenWidthRatio * size * 0.8), height: screenHeightRatio * size * 0.5)
        }
//          .frame(width: screenWidthRatio * size * 0.5, height: screenHeightRatio * size);
//          .background(.green)
            
      }.frame(maxWidth: (size == 200 ? screenSize.width : size * 1.4))
//        .background(.orange)
    }
}
struct ThirdProfile: View {
    var body: some View {
      VStack {
        let circleSize_1:CGFloat = 200;
        let circleSize_2:CGFloat = 180;
        let circleSize_3:CGFloat = 150;
        Spacer().frame(height: screenHeightRatio * 0);
        ZStack {
          CircleImageWithText(imageName: "likeBook_01", size: 200, title: "星の王子さま", author: "サンテグジュペリ")
        }
        VStack {
            HStack {
//                Spacer().frame(width: screenWidthRatio * 13);
                VStack {
                  ZStack {
                    VStack {
                      Spacer().frame(height: screenHeightRatio * 19)
                      ZStack(alignment: .topLeading) {
                        VStack {
                          Spacer().frame(height: screenHeightRatio * 100);
                          HStack {
                            Spacer()
                            CircleImageWithText(imageName: "likeBook_03", size: 150, title: "ビブリア古書堂の事件手帖", author: "三上 延").padding(.leading,  screenWidthRatio * 220)
                          }.frame(width: screenWidth)
                        }
                        VStack {
                          HStack {
                            CircleImageWithText(imageName: "likeBook_02", size: 180, title: "ライ麦畑で捕まえて", author: "J.D.サリンジャー").padding(.leading, 23)
//                            Spacer();
                          }
                        }
                        
                        
                      }
                      
                      
                    }
                    
                  }
                  Spacer();
                }
            }

        }
      }
    }
}

#Preview {
    ThirdProfile()
}
