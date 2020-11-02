//
//  lib.swift
//  streaming_calc
//
//  Created by sycured on 2/28/20.
//  Copyright © 2020 sycured. All rights reserved.
//

func bwServer(_ nblisteners: Float, _ bitrate: Float) -> Float {
    125 * nblisteners * bitrate / 128
}

func serverUsageBw(_ nblisteners: Float, _ bitrate: Float, _ nbdays: Float, _ nbhours: Float) -> Float {
    28125 * nbdays * nbhours * bitrate * nblisteners / 65536
}

func printBwServer(_ nblisteners: Float, _ bitrate: Float) {
    let result: Float = bwServer(nblisteners, bitrate)
    print("Number of listeners: " + String(nblisteners) + "\nBitrate (kb/s): " + String(bitrate) + "\nServer bandwidth (Mib/s): " + String(result))
}

func printServerUsageBw(_ nblisteners: Float, _ bitrate: Float, _ nbdays: Float, _ nbhours: Float) {
    let result: Float = serverUsageBw(nblisteners, bitrate, nbdays, nbhours)
    print("Number of listeners: " + String(nblisteners) + "\nBitrate (kb/s): " + String(bitrate) + "\nNumber of days: " + String(nbdays) + "\nNumber of hours by days: " + String(nbhours) + "\nBandwidth used (GiB): " + String(result))
}
