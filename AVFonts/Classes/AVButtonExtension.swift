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
        if(AVFonts.changeFontThroughOut.characters.count  > 1){
            if(self.titleLabel!.font.fontName != AVFonts.changeFontThroughOut){
                if(AVFonts.changeFontThroughOutTypes.contains(.button)){
                    
                    self.titleLabel?.font = UIFont(name: AVFonts.changeFontThroughOut, size: (self.titleLabel?.font.pointSize)! + AVFonts.changeFontThroughOutIncremnt) ?? self.titleLabel?.font
                    
                }
                else{
                    
                }
            }
            else{
                
            }
        }
        else

        if (AVFonts.attributeFontbtn[self.titleLabel!.font.fontName] != nil) {
            if (AVFonts.attributeFontSizeBtn[self.titleLabel!.font.fontName] != nil){
                
                let fontSize = self.titleLabel!.font.pointSize + AVFonts.attributeFontSizeBtn[self.titleLabel!.font.fontName]!
                self.titleLabel?.font = UIFont(name: AVFonts.attributeFontbtn[self.titleLabel!.font.fontName]!, size: fontSize)!
            }
            else{
                 let font = UIFont(name: AVFonts.attributeFontbtn[self.titleLabel!.font.fontName]!, size: (self.titleLabel?.font.pointSize)!) ?? self.titleLabel?.font
                self.titleLabel?.font = font
            }
        }
    }
}
