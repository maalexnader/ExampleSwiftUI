import SwiftUI

public extension Image {
    init(_ icon: Icon) {
        self.init(icon.rawValue, bundle: Bundle.module)
    }
}
