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
        switch self {
        case .black: 0
        case .red: 1
        case .green: 2
        case .yellow: 3
        case .blue: 4
        case .white: 7
        }
    }
}
