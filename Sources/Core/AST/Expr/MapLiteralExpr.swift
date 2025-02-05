/// A map literal expression.
public struct MapLiteralExpr: Expr {

  /// A key-value pair in a map literal.
  public struct Element: Codable {

    /// Creates an instance having the given properties.
    public init(key: AnyExprID, value: AnyExprID) {
      self.key = key
      self.value = value
    }

    public var key: AnyExprID

    public var value: AnyExprID

  }

  public let origin: SourceRange?

  /// The key-value pairs of the literal.
  public let elements: [Element]

  public init(elements: [Element], origin: SourceRange?) {
    self.origin = origin
    self.elements = elements
  }

}
