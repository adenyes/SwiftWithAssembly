//
//  AppDelegate.swift
//  SwiftSkeleton
//
//  Created by Andrew Denyes on 2/20/17.
//  Copyright © 2017 Diatomic Software LLC. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        printCPUID()
    }
}

