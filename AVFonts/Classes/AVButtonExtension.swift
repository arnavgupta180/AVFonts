//*************************************************************
//*  AVButtonExtension.swift
//* AVFonts
//*************************************************************
//* Created by Arnav Gupta on 7/31/17.
//*Copyright © 2017 Arnav. All rights reserved.

//*************************************************************

import Foundation
import UIKit

extension UIButton{
    
    public func customFontLayoutSubviews(){
        self.customFontLayoutSubviews()
        
        if (AVFonts.attributeFontbtn[self.titleLabel!.font.fontName] != nil) {
            if (AVFonts.attributeFontSizeBtn[self.titleLabel!.font.fontName] != nil){
                
                let fontSize = self.titleLabel!.font.pointSize + AVFonts.attributeFontSizeBtn[self.titleLabel!.font.fontName]!
                self.titleLabel?.font = UIFont(name: AVFonts.attributeFontbtn[self.titleLabel!.font.fontName]!, size: fontSize)!
            }
            else{
                guard let font = UIFont(name: AVFonts.attributeFontbtn[self.titleLabel!.font.fontName]!, size: (self.titleLabel?.font.pointSize)!) else { return }
                self.titleLabel?.font = font
            }
        }
    }
}
