import ArgumentParser

enum Color: String, ExpressibleByArgument {
    case black
    case red
    case green
    case yellow
    case blue
    case white
}

extension Color {
    var ansiCode: Int {
        fatalError("Not implemented")
    }
}
