# streaming_calc_swift

Bandwidth calculation for streaming server | Rewrite from my original in Python

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=sycured_streaming_calc_swift&metric=alert_status)](https://sonarcloud.io/dashboard?id=sycured_streaming_calc_swift)
[![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=sycured_streaming_calc_swift&metric=code_smells)](https://sonarcloud.io/dashboard?id=sycured_streaming_calc_swift)

## Swift Package Manager - Dependency

- [Swift Argument Parser](https://github.com/apple/swift-argument-parser)

## Usage

### Determine necessary server bandwidth

    ./streaming_calc.py bwserver nblisteners bitrate

    ./streaming_calc.py bwserver 250 64

**Output**

    Number of listeners : 250
    Bitrate (kb/s) : 64
    Server bandwidth (Mib/s) : 15625.0


### Determine the amount of data used for the streaming

    ./streaming_calc.py usagebw nblisteners bitrate nbdays nbhours

    ./streaming_calc.py usagebw 250 64 1 24

**Output**

    Number of listeners : 250
    Bitrate (kb/s) : 64
    Number of days : 1
    Number of hours by days : 24
    Bandwidth used (GiB) : 164794.921875
