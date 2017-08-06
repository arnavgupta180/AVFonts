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
    static var changeFontThroughOut : String = ""
    static var changeFontThroughOutIncremnt : CGFloat = 0.0
    static var changeFontThroughOutTypes :[AVFontsView] = []
    static var checkFont:Bool = false

}

//MARK:-
//MARK:- Change Fonts
extension AVFonts{
    
    public class func changeFont(toFont:String){
        changeFontThroughOut = toFont
        changeFontThroughOutTypes = [.button,.label,.textfield,.textview]
    }
    
    public class func changeFont(toFont:String ,_ types: [AVFontsView]){
        
        changeFontThroughOut = toFont
        changeFontThroughOutTypes = types
    }
    
    public class func changeFont(toFont:String ,increment : CGFloat){
        changeFontThroughOut = toFont
        changeFontThroughOutTypes = [.button,.label,.textfield,.textview]
        changeFontThroughOutIncremnt  = increment
    }
    
    public class func changeFont(toFont:String ,_ types: [AVFontsView],increment : CGFloat){
        
        changeFontThroughOut = toFont
        changeFontThroughOutIncremnt  = increment
        changeFontThroughOutTypes = types
    }
}

//MARK:-
//MARK:- Swap Fonts
extension AVFonts{
    public  class func swapFont(currentFont : String , toFont : String){
        
        if currentFont == toFont {
            return
        }
        
        AVFonts.swapFont(currentFont: currentFont, toFont:toFont,[.button,.label,.textfield,.textview])
    }
    
    public  class func swapFont( currentFont : String , toFont : String,_ types : [AVFontsView]){
        
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
    
    public  class func swapFont(currentFont :  String , toFont : String , increment : CGFloat){
        
        if currentFont == toFont {
            return
        }
        
        attributeFontSizeLabel[currentFont] = increment
        attributeFontSizetf[currentFont] = increment
        attributeFontSizeBtn[currentFont] = increment
        attributeFontSizetv[currentFont] = increment
        
        AVFonts.swapFont(currentFont: currentFont, toFont:toFont,[.button,.label,.textfield,.textview])
    }
    
    public  class func swapFont(currentFont :  String , toFont : String ,_ types : [AVFontsView], increment : CGFloat){
        
        if currentFont == toFont {
            return
        }
        
        for type in types {
            
            switch type {
            case .label: attributeFontSizeLabel[currentFont] = increment
            case .button:attributeFontSizeBtn[currentFont] = increment
            case .textfield:attributeFontSizetf[currentFont] = increment
            case .textview:attributeFontSizetv[currentFont] = increment
            }
        }
        
        AVFonts.swapFont(currentFont: currentFont, toFont:toFont,types)
    }
}

//MARK:-
//MARK:- Apply Fonts
extension AVFonts{
    
    public  class func applyAVFonts(){
        
        MethodSwizzleGivenClassName(cls: UILabel.self, originalSelector: #selector(UILabel.layoutSubviews), overrideSelector: #selector(UILabel.customFontLayoutSubviews))
        
        MethodSwizzleGivenClassName(cls: UITextView.self, originalSelector: #selector(UITextView.layoutSubviews), overrideSelector: #selector(UITextView.customFontLayoutSubviews))
        MethodSwizzleGivenClassName(cls: UITextField.self, originalSelector: #selector(UITextField.layoutSubviews), overrideSelector: #selector(UITextField.customFontLayoutSubviews))
        MethodSwizzleGivenClassName(cls: UIButton.self, originalSelector: #selector(UIButton.layoutSubviews), overrideSelector: #selector(UIButton.customFontLayoutSubviews))
    }
}




