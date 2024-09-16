import ArgumentParser

@main
struct Stylish: ParsableCommand {
    @Argument
    var text: String

    @Option
    var color: Color

    @Option
    var background: Color?

    @Flag
    var bold: Bool = false

    mutating func run() throws {
        text.applyColor(color)

        if let background {
            text.applyBackground(background)
        }

        if bold {
            text.bold()
        }

        print(text)
    }
}
