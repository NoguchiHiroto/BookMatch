//
//  SwiftUIView.swift
//  BookMatch
//
//  Created by noguchi.hiroto on 2024/05/13.
//

import SwiftUI


struct ProfileView: View {
  @State private var imgIndex = 2;
  let profileImgs: [String] = ["kitaoka01","kitaoka02","loading","kitaoka04","kitaoka05",]
  
  var body: some View {
    VStack {
        ZStack {
          Image(profileImgs[imgIndex])
            .resizable()
            .frame(width: screenWidthRatio * 390, height: screenHeightRatio * 610)
            .cornerRadius(25)
            .blur(radius: (imgIndex == 2 ? 2 : 0));

            VStack {
                Spacer().frame(height: screenHeightRatio * 29)
                HStack {
                  ForEach(0..<numOfPhotos, id: \.self) { i in
                    Color(hex: (i == imgIndex ? "#ffffff" : "c9c1c1") )
                      .contentShape(Rectangle())
                      .frame(width: screenWidthRatio * 54, height: screenHeightRatio * 5)
                    }
                }.frame(height: screenHeightRatio * 49);
                HStack {
                  VStack {
                    switch imgIndex {
                      case 0:
                        FirstProfile();
                      case 1:
                        SecondProfile();
                      case 2:
                        ThirdProfile();
                      default: Text("ERROR!!!!")
                    }
                  }
                }
                Spacer()
                
            }
          HStack {
            Color.clear
              .contentShape(Rectangle())
              .onTapGesture {
                  if imgIndex > 0 {
                      imgIndex -= 1
                  }
              }
            Color.clear
              .contentShape(Rectangle())
              .onTapGesture {
                if imgIndex < numOfPhotos - 1 {
                  imgIndex += 1
                    
                }
              }
            }
        }
    }
    .frame(width: screenWidthRatio * 390, height: screenHeightRatio * 610)
    .edgesIgnoringSafeArea(.all)
  }
}


#Preview {
  ProfileView()
}
