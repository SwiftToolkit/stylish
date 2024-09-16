import Foundation

extension String {
    mutating func applyColor(_ color: Color) {
        self = ANSICommand.foregroundColor(color) + self + ANSICommand.reset
    }

    mutating func applyBackground(_ color: Color) {
        self = ANSICommand.backgroundColor(color) + self + ANSICommand.reset
    }

    mutating func bold() {
        self = ANSICommand.bold + self + ANSICommand.reset
    }

    func applyingColor(_ color: Color) -> String {
        ANSICommand.foregroundColor(color) + self + ANSICommand.reset
    }

    func applyingBackground(_ color: Color) -> String {
        ANSICommand.backgroundColor(color) + self + ANSICommand.reset
    }

    func applyingBold() -> String {
        ANSICommand.bold + self + ANSICommand.reset
    }
}
