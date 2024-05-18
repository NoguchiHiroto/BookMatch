//
//  SwiftUIView.swift
//  BookMatch
//
//  Created by noguchi.hiroto on 2024/05/13.
//

import SwiftUI


struct ProfileView: View {
    @State private var imgIndex = 0
    let profileImgs: [String] = ["kitaoka01","kitaoka02","kitaoka03","kitaoka04","kitaoka05",]
    
    var body: some View {
        VStack {
            ZStack {
                Image(profileImgs[imgIndex])
                    .resizable()
                    .frame(width: screenWidthRatio * 390, height: screenHeightRatio * 610)
                    .cornerRadius(25);
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
                VStack {
                    Spacer().frame(height: screenHeightRatio * 29)
                    HStack {
                        ForEach(0..<numOfPhotos, id: \.self) { i in
                            Color(hex: (i == imgIndex ? "#ffffff" : "c9c1c1") )
                                .contentShape(Rectangle())
                                .frame(width: screenWidthRatio * 54, height: screenHeightRatio * 5)
                        }
                    }
                    HStack {
                        Spacer().frame(width: screenWidthRatio * 10);
                        VStack {
                            switch imgIndex {
                                case 0:
                                    Spacer();
                                    HStack {
                                        Spacer().frame(width: screenWidthRatio * 12);
                                        Text("name").font(.system(size: screenWidthRatio * 24)).bold(); Spacer().frame(width: screenWidthRatio * 30); Text("age").font(.system(size: screenWidthRatio * 24)).bold(); Spacer();
                                    };
                                    Spacer().frame(height: screenHeightRatio * 20);
                                    HStack {
                                        Spacer().frame(width: screenWidthRatio * 10);
                                        Image(systemName: "mappin.and.ellipse").symbolRenderingMode(.palette)
                                            .foregroundStyle(
                                                .linearGradient(
                                                    colors: [.red, .yellow, .green],
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                )
                                            ).font(.system(size: 30));
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
                                default: Text("ERROR!!!!")
                            }
                        }
                    }
                    Spacer()
                    
                }
            }
//            Spacer()
        }
        .frame(width: screenWidthRatio * 390, height: screenHeightRatio * 610)
        .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    ProfileView()
}
