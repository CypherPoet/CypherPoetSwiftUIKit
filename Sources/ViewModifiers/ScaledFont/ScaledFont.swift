import Foundation
import SwiftUI

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
public struct ScaledFont: ViewModifier {
    
    /// The `ScaledFont` struct won't actually use this. But watching it here lets
    /// the system know that it needs to reload the `body` view when changes occur.
    @Environment(\.sizeCategory) var sizeCategory
    
    
    public var name: String
    public var size: CGFloat
    
    
    public init(
        name: String,
        size: CGFloat
    ) {
        self.name = name
        self.size = size
    }
    

    public func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        
        return content.font(.custom(name, size: scaledSize))
    }
}
