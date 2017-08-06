//*************************************************************
//*  AVFonts.swift
//* AVFonts
//*************************************************************
//* Created by Arnav Gupta on 7/31/17.
//*Copyright © 2017 Arnav. All rights reserved.

//*************************************************************

import Foundation
import UIKit


public enum AVFontsView : Int {
    case label = 1
    case button = 2
    case textfield = 3
    case textview = 4
}

public class AVFonts : NSObject {
    
    static var  attributeFontLbl = [String:String]()
    static var  attributeFontbtn = [String:String]()
    static var  attributeFonttf = [String:String]()
    static var  attributeFonttv = [String:String]()

    static var  attributeFontSizeLabel = [String:CGFloat]()
    static var  attributeFontSizeBtn = [String:CGFloat]()
    static var  attributeFontSizetf = [String:CGFloat]()
    static var  attributeFontSizetv = [String:CGFloat]()

  public  class func changeFont(currentFont : String , toFont : String){

        if currentFont == toFont {
            return
        }
        
        AVFonts.changeFont(currentFont: currentFont, toFont:toFont,[.button,.label,.textfield,.textview])
    }
    
 public  class func changeFont( currentFont : String , toFont : String,_ types : [AVFontsView]){
        
        if currentFont == toFont {
            return
        }
        
        for type in types {
            
            switch type {
            case .label:
                self.attributeFontLbl[currentFont] = toFont
                break
            case .button:
                self.attributeFontbtn[currentFont] = toFont
                break
            case .textfield:
                self.attributeFonttf[currentFont] = toFont
                break
            case .textview:
                self.attributeFonttv[currentFont] = toFont
                break
       
            }
        }
    }
    
  public  class func changeFont(currentFont :  String , toFont : String , increament : CGFloat){
        
        if currentFont == toFont {
            return
        }
        
        attributeFontSizeLabel[currentFont] = increament
        attributeFontSizetf[currentFont] = increament
        attributeFontSizeBtn[currentFont] = increament
        attributeFontSizetv[currentFont] = increament

        AVFonts.changeFont(currentFont: currentFont, toFont:toFont,[.button,.label,.textfield,.textview])
    }
    
  public  class func changeFont(currentFont :  String , toFont : String ,_ types : [AVFontsView], increament : CGFloat){
      
        if currentFont == toFont {
            return
        }
        
        for type in types {
            
            switch type {
            case .label: attributeFontSizeLabel[currentFont] = increament
            case .button:attributeFontSizeBtn[currentFont] = increament
            case .textfield:attributeFontSizetf[currentFont] = increament
            case .textview:attributeFontSizetv[currentFont] = increament
            }
        }
        
        AVFonts.changeFont(currentFont: currentFont, toFont:toFont,types)
    }

  public  class func applyAVFonts(){
        
        MethodSwizzleGivenClassName(cls: UILabel.self, originalSelector: #selector(UILabel.layoutSubviews), overrideSelector: #selector(UILabel.customFontLayoutSubviews))

           MethodSwizzleGivenClassName(cls: UITextView.self, originalSelector: #selector(UITextView.layoutSubviews), overrideSelector: #selector(UITextView.customFontLayoutSubviews))
          MethodSwizzleGivenClassName(cls: UITextField.self, originalSelector: #selector(UITextField.layoutSubviews), overrideSelector: #selector(UITextField.customFontLayoutSubviews))
                       MethodSwizzleGivenClassName(cls: UIButton.self, originalSelector: #selector(UIButton.layoutSubviews), overrideSelector: #selector(UIButton.customFontLayoutSubviews))
    }
}






