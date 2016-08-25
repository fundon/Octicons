//
//  Octicons.swift
//  Octicons
//
//  Created by Fangdun Cai on 2016-08-22.
//  Copyright © 2016 Fangdun Cai. All rights reserved.
//

import Cocoa

public enum Octicon: String, CustomStringConvertible {

    case alert = "\u{f02d}"

    case arrowDown = "\u{f03f}"

    case arrowLeft = "\u{f040}"

    case arrowWright = "\u{f03e}"

    case arrowWsmallWdown = "\u{f0a0}"

    case arrowWsmallWleft = "\u{f0a1}"

    case arrowWsmallWright = "\u{f071}"

    case arrowWsmallWup = "\u{f09f}"

    case arrowWup = "\u{f03d}"

    case beaker = "\u{f0dd}}"

    case bell = "\u{f0de}"

    case bold = "\u{f0e2}"

    case book = "\u{f007}"

    case bookmark = "\u{f07b}"

    case briefcase = "\u{f0d3}"

    case broadcast = "\u{f048}"

    case browser = "\u{f0c5}"

    case bug = "\u{f091}"

    case calendar = "\u{f068}"

    case check = "\u{f03a}"

    case checklist = "\u{f076}"

    case chevronWdown = "\u{f0a3}"

    case chevronWleft = "\u{f0a4}"

    case chevronWright = "\u{f078}"

    case chevronWup = "\u{f0a2}"

    case circleWslash = "\u{f084}"

    case circuitWboard = "\u{f0d6}"

    case clippy = "\u{f035}"

    case clock = "\u{f046}"

    case cloudWdownload = "\u{f00b}"

    case cloudWupload = "\u{f00c}"

    case code = "\u{f05f}"

    case commentWdiscussion = "\u{f04f}"

    case comment = "\u{f02b}"

    case creditWcard = "\u{f045}"

    case dash = "\u{f0ca}"

    case dashboard = "\u{f07d}"

    case database = "\u{f096}"

    case desktopWdownload = "\u{f0dc}"

    case deviceWcameraWvideo = "\u{f057}"

    case deviceWcamera = "\u{f056}"

    case deviceWdesktop = "\u{f27c}"

    case deviceWmobile = "\u{f038}"

    case diffWadded = "\u{f06b}"

    case diffWignored = "\u{f099}"

    case diffWmodified = "\u{f06d}"

    case diffWremoved = "\u{f06c}"

    case diffWrenamed = "\u{f06e}"

    case diff = "\u{f04d}"

    case ellipses = "\u{f101}"

    case ellipsis = "\u{f09a}"

    case eye = "\u{f04e}"

    case fileWbinary = "\u{f094}"

    case fileWcode = "\u{f010}"

    case fileWdirectory = "\u{f016}"

    case fileWmedia = "\u{f012}"

    case fileWpdf = "\u{f014}"

    case fileWsubmodule = "\u{f017}"

    case fileWsymlinkWdirectory = "\u{f0b1}"

    case fileWsymlinkWfile = "\u{f0b0}"

    case fileWtext = "\u{f011}"

    case fileWzip = "\u{f013}"

    case file = "\u{f102}"

    case flame = "\u{f0d2}"

    case fold = "\u{f0cc}"

    case gear = "\u{f02f}"

    case gift = "\u{f042}"

    case gistWsecret = "\u{f08c}"

    case gist = "\u{f00e}"

    case gitWbranch = "\u{f020}"

    case gitWcommit = "\u{f01f}"

    case gitWcompare = "\u{f0ac}"

    case gitWmerge = "\u{f023}"

    case gitWpullWrequest = "\u{f009}"

    case globe = "\u{f0b6}"

    case grabber = "\u{f103}"

    case graph = "\u{f043}"

    case heart = "\u{2665}"

    case history = "\u{f07e}"

    case home = "\u{f08d}"

    case horizontalWrule = "\u{f070}"

    case hubot = "\u{f09d}"

    case inbox = "\u{f0cf}"

    case info = "\u{f059}"

    case issueWclosed = "\u{f028}"

    case issueWopened = "\u{f026}"

    case issueWreopened = "\u{f027}"

    case italic = "\u{f0e4}"

    case jersey = "\u{f019}"

    case key = "\u{f049}"

    case keyboard = "\u{f00d}"

    case law = "\u{f0d8}"

    case lightWbulb = "\u{f000}"

    case linkWexternal = "\u{f07f}"

    case link = "\u{f05c}"

    case listWordered = "\u{f062}"

    case listWunordered = "\u{f061}"

    case location = "\u{f060}"

    case lock = "\u{f06a}"

    case logoWgist = "\u{f0ad}"

    case logoWgithub = "\u{f092}"

    case mailWread = "\u{f03c}"

    case mailWreply = "\u{f051}"

    case mail = "\u{f03b}"

    case markWgithub = "\u{f00a}"

    case markdown = "\u{f0c9}"

    case megaphone = "\u{f077}"

    case mention = "\u{f0be}"

    case milestone = "\u{f075}"

    case mirror = "\u{f024}"

    case mortarWboard = "\u{f0d7}"

    case mute = "\u{f080}"

    case noWnewline = "\u{f09c}"

    case octoface = "\u{f008}"

    case organization = "\u{f037}"

    case package = "\u{f0c4}"

    case paintcan = "\u{f0d1}"

    case pencil = "\u{f058}"

    case person = "\u{f018}"

    case pin = "\u{f041}"

    case plug = "\u{f0d4}"

    case plusWsmall = "\u{f104}"

    case plus = "\u{f05d}"

    case primitiveWdot = "\u{f052}"

    case primitiveWsquare = "\u{f053}"

    case pulse = "\u{f085}"

    case question = "\u{f02c}"

    case quote = "\u{f063}"

    case radioWtower = "\u{f030}"

    case reply = "\u{f105}"

    case repoWclone = "\u{f04c}"

    case repoWforceWpush = "\u{f04a}"

    case repoWforked = "\u{f002}"

    case repoWpull = "\u{f006}"

    case repoWpush = "\u{f005}"

    case repo = "\u{f001}"

    case rocket = "\u{f033}"

    case rss = "\u{f034}"

    case ruby = "\u{f047}"

    case search = "\u{f02e}"

    case server = "\u{f097}"

    case settings = "\u{f07c}"

    case shield = "\u{f0e1}"

    case signWin = "\u{f036}"

    case signWout = "\u{f032}"

    case smiley = "\u{f0e7}"

    case squirrel = "\u{f0b2}"

    case star = "\u{f02a}"

    case stop = "\u{f08f}"

    case sync = "\u{f087}"

    case tag = "\u{f015}"

    case tasklist = "\u{f0e5}"

    case telescope = "\u{f088}"

    case terminal = "\u{f0c8}"

    case textWsize = "\u{f0e3}"

    case threeWbars = "\u{f05e}"

    case thumbsdown = "\u{f0db}"

    case thumbsup = "\u{f0da}"

    case tools = "\u{f031}"

    case trashcan = "\u{f0d0}"

    case triangleWdown = "\u{f05b}"

    case triangleWleft = "\u{f044}"

    case triangleWright = "\u{f05a}"

    case triangleWup = "\u{f0aa}"

    case unfold = "\u{f039}"

    case unmute = "\u{f0ba}"

    case unverified = "\u{f0e8}"

    case verified = "\u{f0e6}"

    case versions = "\u{f064}"

    case watch = "\u{f0e0}"

    case x = "\u{f081}"

    case zap = "\u{26a1}"

    public var description: String {
        return self.rawValue
    }
}
