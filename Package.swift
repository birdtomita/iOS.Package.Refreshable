// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Refreshable",
	platforms: [
		.iOS(.v13)
	],
    products: [
        .library(
            name: "Refreshable",
            targets: ["Refreshable"]
		)
    ],
    dependencies: [
		.package(
			url: "https://github.com/siteline/SwiftUI-Introspect.git",
			from: "1.0.0"
		)
    ],
    targets: [
        .target(
            name: "Refreshable",
            dependencies: [
                .product(name: "SwiftUIIntrospect", package: "SwiftUI-Introspect")
            ],
	    path: "Refreshable"
	)
    ]
)
