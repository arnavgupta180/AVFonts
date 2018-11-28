//*************************************************************
//*  AVSwizzler.swift
//* AVFonts
//*************************************************************
//* Created by Arnav Gupta on 7/31/17.
//*Copyright © 2017 Arnav. All rights reserved.

//*************************************************************

import Foundation
import UIKit

func MethodSwizzleGivenClassName(cls: AnyClass, originalSelector: Selector, overrideSelector: Selector) {

    let origMethod: Method = class_getInstanceMethod(cls, originalSelector)
    let overrideMethod: Method = class_getInstanceMethod(cls, overrideSelector)

    if class_addMethod(cls, originalSelector, method_getImplementation(overrideMethod), method_getTypeEncoding(overrideMethod)) {
        class_replaceMethod(cls, overrideSelector, method_getImplementation(origMethod), method_getTypeEncoding(origMethod))
    } else {
        method_exchangeImplementations(origMethod, overrideMethod)
    }
}
