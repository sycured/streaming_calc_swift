//
//  lib.swift
//  streaming_calc
//
//  Created by sycured on 2/28/20.
//  Copyright © 2020 sycured. All rights reserved.
//

func bwServer(_ nblisteners: Float, _ bitrate: Float) -> Float {
    nblisteners * bitrate * 1000 / 1024
}

func serverUsageBw(_ nblisteners: Float, _ bitrate: Float, _ nbdays: Float, _ nbhours: Float) -> Float {
    nbdays * nbhours * 3600 * bitrate * 1000 / 8 * nblisteners / 1024 / 1024
}

func printBwServer(_ nblisteners: Float, _ bitrate: Float) {
    let result: Float = bwServer(nblisteners, bitrate)
    print("Number of listeners: " + String(nblisteners) + "\nBitrate (kb/s): " + String(bitrate) + "\nServer bandwidth (Mib/s): " + String(result))
}

func printServerUsageBw(_ nblisteners: Float, _ bitrate: Float, _ nbdays: Float, _ nbhours: Float) {
    let result: Float = serverUsageBw(nblisteners, bitrate, nbdays, nbhours)
    print("Number of listeners: " + String(nblisteners) + "\nBitrate (kb/s): " + String(bitrate) + "\nNumber of days: " + String(nbdays) + "\nNumber of hours by days: " + String(nbhours) + "\nBandwidth used (GiB): " + String(result))
}
