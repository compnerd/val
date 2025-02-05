/// An expression ran in a future.
public struct SpawnExpr: Expr {

  public let origin: SourceRange?

  /// The declaration of the underlying anonymous function.
  public let decl: NodeID<FunctionDecl>

  public init(decl: NodeID<FunctionDecl>, origin: SourceRange?) {
    self.origin = origin
    self.decl = decl
  }

}
