import Foundation

enum UI {
    static func success(_ string: String) {
        print(string.applyingColor(.green))
    }

    static func warning(_ string: String) {
        print(string.applyingColor(.yellow))
    }

    static func error(_ string: String, emphasize: Bool = false) {
        if emphasize {
            print(string.applyingBackground(.red).applyingColor(.white).applyingBold())
        } else {
            print(string.applyingColor(.red))
        }
    }
}
