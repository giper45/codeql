// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.ApplyExpr

class BinaryExprBase extends Synth::TBinaryExpr, ApplyExpr {
  override string getAPrimaryQlClass() { result = "BinaryExpr" }
}
