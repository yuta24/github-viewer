import Foundation
import PackagePlugin

@main
struct Plugin: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        let createAPI = try context.tool(named: "create-api")
        let workingDirectory = context.package.directory.appending("Sources", "GitHubAPI")

        let process = Process()
        process.currentDirectoryURL = URL(fileURLWithPath: workingDirectory.string)
        process.executableURL = URL(fileURLWithPath: createAPI.path.string)
        process.arguments = [
            "generate",
            "Spec/github.json",
            "--config", ".create-api.yaml",
            "--output", "Generated"
        ]

        try process.run()
        process.waitUntilExit()
    }
}
