import Foundation

enum ANSICommand {
    static let reset = "0".ansi
    static let bold = "1".ansi
    static let italic = "3".ansi
    static let underline = "4".ansi

    static func foregroundColor(_ color: Color) -> String {
        "3\(color.ansiCode)".ansi
    }

    static func backgroundColor(_ color: Color) -> String {
        "4\(color.ansiCode)".ansi
    }
}

private extension String {
    var ansi: String {
        "\u{001B}[" + self + "m"
    }
}
