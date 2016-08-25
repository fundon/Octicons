//
//  NSFont.swift
//  Octicons
//
//  Created by Fangdun Cai on 2016-08-26.
//  Copyright © 2016 Fangdun Cai. All rights reserved.
//

import Foundation

public extension NSFont {
    public static func icon(fontName: String, size: CGFloat) -> NSFont {
        FontLoader.load(fontName: fontName)
        return NSFont(name: fontName, size: size)!
    }
}
