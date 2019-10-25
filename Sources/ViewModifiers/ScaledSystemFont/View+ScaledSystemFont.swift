import Foundation
import SwiftUI


@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
extension View {
    
    public func scaledSystemFont(
        size: CGFloat,
    ) -> some View {
        self.modifier(ScaledSystemFont(size: size))
    }
}