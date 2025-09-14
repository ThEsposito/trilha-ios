// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "trilha-ios",
    products: [
        .executable(name: "LogicaAula2", targets: ["LogicaAula2"]),
        .executable(name: "LogicaAula3", targets: ["LogicaAula3"]),
        .executable(name: "POOAula1", targets: ["POOAula1"]),
        .executable(name: "POOAula2", targets: ["POOAula2"]),
        .executable(name: "POOAula4", targets: ["POOAula4"]),
        .executable(name: "POOAula5", targets: ["POOAula5"]),
        .executable(name: "iOSFoundationsAula0", targets: ["iOSFoundationsAula0"]),
        .executable(name: "iOSFoundationsAula2", targets: ["iOSFoundationsAula2"]),
        .executable(name: "iOSFoundationsAula3", targets: ["iOSFoundationsAula3"]),
        .executable(name: "SourcesMain", targets: ["SourcesMain"])
    ],
    dependencies: [
        // Adicione dependências externas aqui se necessário
    ],
    targets: [
        .executableTarget(
            name: "LogicaAula2",
            path: "01-logica-swift/Aula2"
        ),
        .executableTarget(
            name: "LogicaAula3",
            path: "01-logica-swift/Aula3"
        ),
        .executableTarget(
            name: "POOAula1",
            path: "02-poo-swift/Aula_1"
        ),
        .executableTarget(
            name: "POOAula2",
            path: "02-poo-swift/Aula_2"
        ),
        .executableTarget(
            name: "POOAula4",
            path: "02-poo-swift/Aula_4"
        ),
        .executableTarget(
            name: "POOAula5",
            path: "02-poo-swift/Aula_5"
        ),
        .executableTarget(
            name: "iOSFoundationsAula0",
            path: "03-ios-foundations/iOS_Foundations/Aula0"
        ),
        .executableTarget(
            name: "iOSFoundationsAula2",
            path: "03-ios-foundations/iOS_Foundations/Aula2"
        ),
        .executableTarget(
            name: "iOSFoundationsAula3",
            path: "03-ios-foundations/iOS_Foundations/Aula3"
        ),
        .executableTarget(
            name: "SourcesMain",
            path: "Sources"
        )
    ]
)
