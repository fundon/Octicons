//
//  NSImage.swift
//  Octicons
//
//  Created by Fangdun Cai on 2016-08-26.
//  Copyright © 2016 Fangdun Cai. All rights reserved.
//

import Foundation

public extension NSImage {
    public static func icon(fontName: String, code: Octicon, size: CGSize, fontSize: CGFloat, textColor: NSColor, backgroundColor: NSColor = NSColor.clear) -> NSImage {
        // http://stackoverflow.com/questions/9829475/uiimage-vs-nsimage-drawing-to-an-off-screen-image-in-ios
        let image = NSImage(size: size)
        image.lockFocus()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attributedString = NSAttributedString(string: code.rawValue, attributes: [
            NSFontAttributeName: NSFont.icon(fontName: fontName, size: fontSize),
            NSParagraphStyleAttributeName: paragraph,
            NSForegroundColorAttributeName: textColor,
            NSBackgroundColorAttributeName: backgroundColor
            ])
        attributedString.draw(in: NSRect(x: 0, y: 0, width: size.width, height: size.height))
        image.unlockFocus()
        return image
    }

    public static func icon(fontName: String, code: Octicon, size: CGSize, fontSize: CGFloat, textColor: NSColor) -> NSImage {
        let image = NSImage(size: size)
        image.lockFocus()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attributedString = NSAttributedString(string: code.rawValue, attributes: [
            NSFontAttributeName: NSFont.icon(fontName: fontName, size: fontSize),
            NSParagraphStyleAttributeName: paragraph,
            NSForegroundColorAttributeName: textColor
            ])
        attributedString.draw(in: NSRect(x: 0, y: 0, width: size.width, height: size.height))
        image.unlockFocus()
        return image
    }

    public static func icon(fontName: String, code: Octicon, size: CGSize, fontSize: CGFloat) -> NSImage {
        let image = NSImage(size: size)
        image.lockFocus()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attributedString = NSAttributedString(string: code.rawValue, attributes: [
            NSFontAttributeName: NSFont.icon(fontName: fontName, size: fontSize),
            NSParagraphStyleAttributeName: paragraph
            ])
        attributedString.draw(in: NSRect(x: 0, y: 0, width: size.width, height: size.height))
        image.unlockFocus()
        return image
    }

    public static func icon(fontName: String, code: Octicon, size: CGSize) -> NSImage {
        let image = NSImage(size: size)
        image.lockFocus()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let fontAspectRatio: CGFloat = 1
        let fontSize = min(size.width / fontAspectRatio, size.height)
        let attributedString = NSAttributedString(string: code.rawValue, attributes: [
            NSFontAttributeName: NSFont.icon(fontName: fontName, size: fontSize),
            NSParagraphStyleAttributeName: paragraph
            ])
        attributedString.draw(in: NSRect(x: 0, y: 0, width: size.width, height: size.height))
        image.unlockFocus()
        return image
    }

    public static func icon(code: Octicon, size: CGSize, attributes: [String: Any]?) -> NSImage {
        let image = NSImage(size: size)
        image.lockFocus()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attributedString = NSAttributedString(string: code.rawValue, attributes: attributes)
        attributedString.draw(in: NSRect(x: 0, y: 0, width: size.width, height: size.height))
        image.unlockFocus()
        return image
    }
}
