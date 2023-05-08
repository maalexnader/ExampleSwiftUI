import SwiftUI

public extension View {
    @ViewBuilder
    func `if`<Content: View>(_ conditional: Bool, modifier: (Self) -> Content) -> some View {
        if conditional {
            modifier(self)
        } else {
            self
        }
    }
    
    @ViewBuilder
    func ifLet<Content: View, T>(
        _ conditional: Optional<T>,
        _ content: (Self, _ value: T) -> Content
    ) -> some View {
        if let value = conditional {
            content(self, value)
        } else {
            self
        }
    }
}
