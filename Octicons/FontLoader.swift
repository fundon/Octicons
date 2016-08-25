//
//  FontLoader.swift
//  Octicons
//
//  Created by Fangdun Cai on 2016-08-26.
//  Copyright © 2016 Fangdun Cai. All rights reserved.
//

import Foundation

class FontLoader: NSObject {

    static var fonts = [String: Bool]()

    class func load(fontName: String, type: String = "ttf") {
        if self.fonts[fontName] != nil {
            return
        }

        let bundle = Bundle(for: FontLoader.self)
        let filePath = bundle.path(forResource: fontName, ofType: type)
        let fontURL = URL(fileURLWithPath: filePath!)

        do {
            let data = try Data(contentsOf: fontURL)
            let provider = CGDataProvider(data: data as CFData)
            let font = CGFont(provider!)
            var error: Unmanaged<CFError>?
            if !CTFontManagerRegisterGraphicsFont(font, &error) {
                let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
                let nsError = error!.takeUnretainedValue() as AnyObject as! NSError
                throw NSException(name: .internalInconsistencyException, reason: errorDescription as String, userInfo: [NSUnderlyingErrorKey: nsError]) as! Error
            }
        } catch let error as NSError {
            print("Could not load \(error), \(error.userInfo)")
        }
        self.fonts[fontName] = true
    }
}
