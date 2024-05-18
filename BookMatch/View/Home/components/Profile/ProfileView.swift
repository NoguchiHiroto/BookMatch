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
                    }.padding(.top)
                        .frame(height: screenHeightRatio * 49);
                    HStack {
                        VStack {
                            switch imgIndex {
                                case 0:
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
                            case 1:
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
                                    Text("北岡直紀です。技術に情熱を燃やし、常に新しいことに挑戦しています。").font(.system(size: screenWidthRatio * 22)).bold();
                                }
                            case 2:
                                let circleSize_1:CGFloat = 200;
                                let circleSize_2:CGFloat = 180;
                                let circleSize_3:CGFloat = 150;
                                Spacer().frame(height: screenHeightRatio * 0);
                                ZStack {
                                    Image("likeBook_01") // 画像の名前に置き換えてください
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: circleSize_1, height: circleSize_1) // 円形のサイズを設定
                                        .clipShape(Circle()) // 画像を円形にクリップ
                                        .overlay(Circle().stroke(Color.white, lineWidth: 2)) // 円形の境界線を追加（オプション）
                                        .shadow(radius: 10) // 影を追加（オプション)
                                        .padding(.horizontal) // 左右にパディングを追加
                                        .frame(maxWidth: .infinity) // 親要素の幅いっぱいに広げる
//                                        .background(Color.yellow)  // 背景色を設定してパディングが見えるようにする
                                    HStack {
                                        Spacer().frame(width: screenWidthRatio * (circleSize_1) - 80)
                                        VStack {
                                            Spacer().frame(height: screenHeightRatio * (circleSize_1) - 80)
                                            Text("星の王子さま").font(.system(size: 18)).bold()
                                            Spacer().frame(height: screenHeightRatio * 10)
                                            Text("サン＝テグジュペリ").font(.system(size: 18)).bold()
                                        }
                                    }
                                    
                                    
                                }
                                
//                                Spacer().frame(height: screenHeightRatio * 19);
                                
//                                ZStack (alignment: .topLeading){
                                    VStack {
                                        HStack {
                                            Spacer().frame(width: screenWidthRatio * 13);
                                            VStack {
                                                ZStack {
                                                    Image("likeBook_02") // 画像の名前に置き換えてください
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: circleSize_2, height: circleSize_2) // 円形のサイズを設定
                                                        .clipShape(Circle()) // 画像を円形にクリップ
                                                        .overlay(Circle().stroke(Color.white, lineWidth: 2)) // 円形の境界線を追加（オプション）
                                                        .shadow(radius: 10) // 影を追加（オプション）
                                                    HStack {
                                                        Spacer().frame(width: screenWidthRatio * (circleSize_3) - 100);
                                                        VStack {
                                                            Spacer().frame(height: screenHeightRatio * (circleSize_1) - 80)
                                                            Text("ライ麦畑でつかまえて").font(.system(size: 14)).bold()
                                                            Spacer().frame(height: screenHeightRatio * 10)
                                                            Text("三上 延").font(.system(size: 14)).bold()
                                                        }
                                                    }
                                                }
                                                
                                                Spacer();
                                            }
                                            Spacer().frame(width: screenWidthRatio * 26);
                                            VStack {
                                                Spacer().frame(height: screenHeightRatio * 70);
                                                Image("likeBook_03") // 画像の名前に置き換えてください
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: circleSize_3, height: circleSize_3) // 円形のサイズを設定
                                                    .clipShape(Circle()) // 画像を円形にクリップ
                                                    .overlay(Circle().stroke(Color.white, lineWidth: 2)) // 円形の境界線を追加（オプション）
                                                    .shadow(radius: 10) // 影を追加（オプション）
                                                HStack {
                                                    Spacer().frame(width: screenWidthRatio * (circleSize_1) - 100);
                                                    VStack {
                                                        Spacer().frame(height: screenHeightRatio * (circleSize_1) - 80)
                                                        Text("ビブリア古書堂の事件手帖").font(.system(size: 10)).bold()
                                                        Spacer().frame(height: screenHeightRatio * 10)
                                                        Text("J.D.サリンジャー").font(.system(size: 10)).bold()
                                                    }
                                                }
                                            }
                                            Spacer()
                                        }
                                        Spacer();
                                    }
//                                }
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
