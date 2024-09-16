import Foundation

enum ANSICommand {
    static let reset = "Not implemented"
    static let bold = "Not implemented"
    static let italic = "Not implemented"
    static let underline = "Not implemented"

    static func foregroundColor(_ color: Color) -> String {
        fatalError("Not implemented")
    }

    static func backgroundColor(_ color: Color) -> String {
        fatalError("Not implemented")
    }
}

private extension String {
    var ansi: String {
        fatalError("Not implemented")
    }
}
