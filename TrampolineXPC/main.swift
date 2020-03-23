//
//  main.swift
//  TrampolineXPC
//
//  Created by David Albert on 3/22/20.
//  Copyright © 2020 David Albert. All rights reserved.
//

import Foundation

//int main(int argc, const char *argv[])
//{
//    // Create the delegate for the service.
//    ServiceDelegate *delegate = [ServiceDelegate new];
//
//    // Set up the one NSXPCListener for this service. It will handle all incoming connections.
//    NSXPCListener *listener = [NSXPCListener serviceListener];
//    listener.delegate = delegate;
//
//    // Resuming the serviceListener starts this service. This method does not return.
//    [listener resume];
//    return 0;
//}

let delegate = ServiceDelegate()
let listener = NSXPCListener.service()
listener.delegate = delegate
listener.resume()
