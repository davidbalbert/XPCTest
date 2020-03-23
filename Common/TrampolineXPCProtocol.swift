//
//  TrampolineXPCProtocol.swift
//  TrampolineXPC
//
//  Created by David Albert on 3/22/20.
//  Copyright © 2020 David Albert. All rights reserved.
//

import Foundation

@objc protocol TrampolineXPCProtocol {
    func upperCaseString(_ string: String, withReply reply: @escaping (String) -> Void)
}

/*
 To use the service from an application or other process, use NSXPCConnection to establish a connection to the service by doing something like this:

     _connectionToService = [[NSXPCConnection alloc] initWithServiceName:@"is.dave.TrampolineXPC"];
     _connectionToService.remoteObjectInterface = [NSXPCInterface interfaceWithProtocol:@protocol(TrampolineXPCProtocol)];
     [_connectionToService resume];

Once you have a connection to the service, you can use it like this:

     [[_connectionToService remoteObjectProxy] upperCaseString:@"hello" withReply:^(NSString *aString) {
         // We have received a response. Update our text field, but do it on the main thread.
         NSLog(@"Result string was: %@", aString);
     }];

 And, when you are finished with the service, clean up the connection like this:

     [_connectionToService invalidate];
*/
