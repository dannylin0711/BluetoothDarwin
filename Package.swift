// swift-tools-version:5.1
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
//            .branchItem("c÷3beb316c08daf39d4a95b2d14ec0305ec3858a3")
            .branch("master")
//            .commit("c3beb316c08daf39d4a95b2d14ec0305ec3858a3")
        )
    ],
    targets: [
        .target(
            name: "BluetoothDarwin",
            dependencies: [
                "Bluetooth",
                "BluetoothHCI",
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
