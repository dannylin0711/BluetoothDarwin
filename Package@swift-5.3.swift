// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "BluetoothDarwin",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v5),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "BluetoothDarwin",
            targets: ["BluetoothDarwin"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/PureSwift/Bluetooth.git",
            .branch("master")
        )
    ],
    targets: [
        .target(
            name: "BluetoothDarwin",
            dependencies: [
                .product(
                    name: "Bluetooth",
                    package: "Bluetooth"
                ),
                .product(
                    name: "BluetoothHCI",
                    package: "Bluetooth"
                ),
                "CBluetoothDarwin"
            ]
        ),
        .target(
            name: "CBluetoothDarwin"
        ),
        .testTarget(
            name: "BluetoothDarwinTests",
            dependencies: [
                "BluetoothDarwin"
            ]
        )
    ]
)
