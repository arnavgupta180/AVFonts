//*************************************************************
//*  AVTextViewExtension.swift
//* AVFonts
//*************************************************************
//* Created by Arnav Gupta on 7/31/17.
//*Copyright © 2017 Arnav. All rights reserved.

//*************************************************************

import Foundation
import UIKit

extension UITextView {
    
    public func customFontLayoutSubviews() {

        self.customFontLayoutSubviews()
        
        if AVFonts.changeFontThroughOut.count > 1 {
            if self.font?.fontName != AVFonts.changeFontThroughOut {
                if AVFonts.changeFontThroughOutTypes.contains(.textview) {
                    
                    self.font = UIFont(name: AVFonts.changeFontThroughOut, size: (self.font?.pointSize)! + AVFonts.changeFontThroughOutIncremnt)
                }
            }
        } else if AVFonts.attributeFonttv[self.font?.fontName ?? ""] != nil {
            if AVFonts.attributeFontSizetv[self.font?.fontName ?? ""] != nil {
                
                let fontSize = (self.font?.pointSize ?? 0) + AVFonts.attributeFontSizetv[self.font?.fontName ?? ""]!
                self.font = UIFont(name: AVFonts.attributeFonttv[self.font?.fontName ?? ""]!, size: fontSize)
            } else {
                self.font = UIFont(name: AVFonts.attributeFonttv[self.font?.fontName ?? ""]!, size: (self.font?.pointSize ?? 0))
            }
        }
    }
}
