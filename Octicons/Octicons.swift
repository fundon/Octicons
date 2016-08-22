//
//  Octicons.swift
//  Octicons
//
//  Created by Fangdun Cai on 2016-08-22.
//  Copyright © 2016 Fangdun Cai. All rights reserved.
//

import Cocoa

class FontLoader: NSObject {
    class func load(fontName: String, type: String = "ttf") {
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
    }
}


public extension NSFont {

    @nonobjc static var _icons = [String: Bool]()

    public static func icon(fontName: String, size: CGFloat) -> NSFont {
        let exits = self._icons[fontName]
        if exits == nil {
            FontLoader.load(fontName: fontName)
            self._icons[fontName] = true
        }
        return NSFont(name: fontName, size: size)!
    }
}


public extension NSImage {
    public static func icon(fontName: String, code: String, size: CGSize, fontSize: CGFloat, textColor: NSColor, backgroundColor: NSColor = NSColor.clear) -> NSImage {
        // http://stackoverflow.com/questions/9829475/uiimage-vs-nsimage-drawing-to-an-off-screen-image-in-ios
        let image = NSImage(size: size)
        print(size)
        image.lockFocus()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attributedString = NSAttributedString(string: code, attributes: [
            NSFontAttributeName: NSFont.icon(fontName: fontName, size: fontSize),
            NSParagraphStyleAttributeName: paragraph,
            NSForegroundColorAttributeName: textColor,
            NSBackgroundColorAttributeName: backgroundColor
            ])
        attributedString.draw(in: NSRect(x: 0, y: 0, width: size.width, height: size.height))
        image.unlockFocus()
        return image
    }

    public static func icon(fontName: String, code: String, size: CGSize, fontSize: CGFloat, textColor: NSColor) -> NSImage {
        let image = NSImage(size: size)
        image.lockFocus()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attributedString = NSAttributedString(string: code, attributes: [
            NSFontAttributeName: NSFont.icon(fontName: fontName, size: fontSize),
            NSParagraphStyleAttributeName: paragraph,
            NSForegroundColorAttributeName: textColor
            ])
        attributedString.draw(in: NSRect(x: 0, y: 0, width: size.width, height: size.height))
        image.unlockFocus()
        return image
    }

    public static func icon(fontName: String, code: String, size: CGSize, fontSize: CGFloat) -> NSImage {
        let image = NSImage(size: size)
        image.lockFocus()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attributedString = NSAttributedString(string: code, attributes: [
            NSFontAttributeName: NSFont.icon(fontName: fontName, size: fontSize),
            NSParagraphStyleAttributeName: paragraph
            ])
        attributedString.draw(in: NSRect(x: 0, y: 0, width: size.width, height: size.height))
        image.unlockFocus()
        return image
    }

    public static func icon(fontName: String, code: String, size: CGSize) -> NSImage {
        let image = NSImage(size: size)
        image.lockFocus()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let fontAspectRatio: CGFloat = 1
        let fontSize = min(size.width / fontAspectRatio, size.height)
        let attributedString = NSAttributedString(string: code, attributes: [
            NSFontAttributeName: NSFont.icon(fontName: fontName, size: fontSize),
            NSParagraphStyleAttributeName: paragraph
            ])
        attributedString.draw(in: NSRect(x: 0, y: 0, width: size.width, height: size.height))
        image.unlockFocus()
        return image
    }

    public static func icon(code: String, size: CGSize, attributes: [String: Any]?) -> NSImage {
        let image = NSImage(size: size)
        image.lockFocus()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attributedString = NSAttributedString(string: code, attributes: attributes)
        attributedString.draw(in: NSRect(x: 0, y: 0, width: size.width, height: size.height))
        image.unlockFocus()
        return image
    }
}
