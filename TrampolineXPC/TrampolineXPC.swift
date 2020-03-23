//
//  TrampolineXPC.swift
//  TrampolineXPC
//
//  Created by David Albert on 3/22/20.
//  Copyright © 2020 David Albert. All rights reserved.
//

import Cocoa

class TrampolineXPC: NSObject, TrampolineXPCProtocol {
    func upperCaseString(_ string: String, withReply reply: @escaping (String) -> Void) {
        reply(string.uppercased());
    }
}
