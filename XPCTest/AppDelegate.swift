//
//  AppDelegate.swift
//  XPCTest
//
//  Created by David Albert on 3/22/20.
//  Copyright © 2020 David Albert. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet var window: NSWindow!
    @IBOutlet var textField: NSTextField!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func uppercase(_ sender: NSButton) {
        let connection = NSXPCConnection(serviceName: "is.dave.TrampolineXPC")
        connection.remoteObjectInterface = NSXPCInterface(with: TrampolineXPCProtocol.self)
        connection.resume()

        let service = connection.remoteObjectProxyWithErrorHandler { error in
            print("Received error:", error)
        } as? TrampolineXPCProtocol

        service?.upperCaseString(textField.stringValue) { response in
            DispatchQueue.main.async {
                self.textField.stringValue = response
            }
        }
    }
}

