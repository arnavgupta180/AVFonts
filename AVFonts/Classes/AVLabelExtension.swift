// *  AVLabelExtension.swift
// * AVFonts
// * Created by Arnav Gupta on 7/31/17.
// *Copyright © 2017 Arnav. All rights reserved.

import Foundation
import UIKit

extension UILabel {
    @objc public func customFontLayoutSubviews() {
        self.customFontLayoutSubviews()
        if AVFonts.checkFont == false {
            if AVFonts.changeFontThroughOut.count > 1 {
                if self.font.fontName != AVFonts.changeFontThroughOut {
                    if AVFonts.changeFontThroughOutTypes.contains(.label) {
                        let font = self.font.fontName
                        self.font = UIFont(name: AVFonts.changeFontThroughOut, size: self.font.pointSize + AVFonts.changeFontThroughOutIncremnt)
                        if font == self.font.fontName {
                            AVFonts.checkFont = true
                        }
                    }
                }
            } else
            if AVFonts.attributeFontLbl[self.font.fontName] != nil {
                if AVFonts.attributeFontSizeLabel[self.font.fontName] != nil {
                    let fontSize = self.font.pointSize + AVFonts.attributeFontSizeLabel[self.font.fontName]!
                    self.font = UIFont(name: AVFonts.attributeFontLbl[self.font.fontName]!, size: fontSize)
                } else {
                    self.font = UIFont(name: AVFonts.attributeFontLbl[self.font.fontName]!, size: self.font.pointSize)
                }
            }
        } else {
            print("You entered an invalid Font Name .Please check your font name")
        }
    }

}
