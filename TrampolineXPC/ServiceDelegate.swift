//
//  ServiceDelegate.swift
//  TrampolineXPC
//
//  Created by David Albert on 3/22/20.
//  Copyright © 2020 David Albert. All rights reserved.
//

import Cocoa

class ServiceDelegate: NSObject, NSXPCListenerDelegate {
    func listener(_ listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool {

        newConnection.exportedInterface = NSXPCInterface(with: TrampolineXPCProtocol.self)
        newConnection.exportedObject = TrampolineXPC()
        newConnection.resume()

        return true
    }
}
