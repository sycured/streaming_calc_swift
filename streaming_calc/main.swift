//
//  main.swift
//  streaming_calc
//
//  Created by sycured on 2/28/20.
//  Copyright © 2020 sycured. All rights reserved.
//

import ArgumentParser

struct StreamingCalc: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Utility to calculate bandwidth",
        subcommands: [bwserver.self, usagebw.self]
    )
}

struct Options_bwserver: ParsableArguments {
    @Argument(help: "number of listeners")
    var nblisteners: Float

    @Argument(help: "bitrate in kb/s")
    var bitrate: Float
}

struct Options_usagebw: ParsableArguments {
    @Argument(help: "number of listeners")
    var nblisteners: Float

    @Argument(help: "bitrate in kb/s")
    var bitrate: Float

    @Argument(help: "number of days")
    var nbdays: Float

    @Argument(help: "number of hours by days")
    var nbhours: Float
}

extension StreamingCalc {
    struct bwserver: ParsableCommand {
        static var configuration = CommandConfiguration(abstract: "Determine necessary server bandwidth")

        @OptionGroup()
        var options: Options_bwserver

        func run() {
            PrintBwServer(options.nblisteners, options.bitrate)
        }
    }

    struct usagebw: ParsableCommand {
        static var configuration = CommandConfiguration(abstract: "Determine the amount of data used for the streaming")

        @OptionGroup()
        var options: Options_usagebw

        func run() {
            PrintServerUsageBw(options.nblisteners, options.bitrate, options.nbdays, options.nbhours)
        }
    }
}

StreamingCalc.main()
