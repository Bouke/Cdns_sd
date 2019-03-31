// swift-tools-version:4.2

import PackageDescription

#if !os(Linux)
    let package = Package(
        name: "Cdns_sd"
    )
#else
    let package = Package(
        name: "Cdns_sd",
        pkgConfig: "avahi-compat-libdns_sd",
        providers: [
            .apt(["libavahi-compat-libdnssd-dev"])
        ]
    )
#endif
