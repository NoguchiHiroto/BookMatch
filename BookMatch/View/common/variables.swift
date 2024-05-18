//
//  variables.swift
//  BookMatch
//
//  Created by noguchi.hiroto on 2024/05/13.
//

import Foundation
import SwiftUI
//extension Color {
//    init(hex: String) {
//        let scanner = Scanner(string: hex)
//        _ = scanner.scanString("#")
//        
//        var rgbValue: UInt64 = 0
//        scanner.scanHexInt64(&rgbValue)
//        
//        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
//        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
//        let blue = Double(rgbValue & 0x0000FF) / 255.0
//        let alpha = hex.count > 7 ? Double((rgbValue & 0xFF000000) >> 24) / 255.0 : 1.0
//        
//        self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
//    }
//}
private var baseWidth = 390
private var baseHeight = 844
let screenSize = UIScreen.main.bounds.size
var screenWidth = screenSize.width
var screenHeight = screenSize.height
var screenWidthRatio = screenWidth / getBaseWidth()
var screenHeightRatio = screenHeight / getBaseHeight()
let numOfPhotos = 5;
func getBaseWidth() ->CGFloat{
    return CGFloat(baseWidth)
}
func getBaseHeight() -> CGFloat {
    return CGFloat(baseHeight)
}
func setScreenWidth(width: CGFloat) ->Void{
    screenWidth = width
}
func setScreenHeight(height: CGFloat) -> Void {
    screenHeight = height
}
extension Color {
  /// create new object with hex string
  init?(hex: String, opacity: Double = 1.0) {
    // delete "#" prefix
    let hexNorm = hex.hasPrefix("#") ? String(hex.dropFirst(1)) : hex

    // scan each byte of RGB respectively
    let scanner = Scanner(string: hexNorm)
    var color: UInt64 = 0
    if scanner.scanHexInt64(&color) {
      let red = CGFloat((color & 0xFF0000) >> 16) / 255.0
      let green = CGFloat((color & 0x00FF00) >> 8) / 255.0
      let blue = CGFloat(color & 0x0000FF) / 255.0
      self.init(red: red, green: green, blue: blue, opacity: opacity)
    } else {
      // invalid format
      return nil
    }
  }
}
