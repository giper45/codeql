import javascript

query predicate test_RouteSetup(Connect::RouteSetup rs) { any() }

query predicate test_RequestInputAccess(
  HTTP::RequestInputAccess ria, string res, Connect::RouteHandler rh
) {
  ria.getRouteHandler() = rh and res = ria.getKind()
}

query predicate test_RouteHandler_getAResponseHeader(
  Connect::RouteHandler rh, string name, HTTP::HeaderDefinition res
) {
  res = rh.getAResponseHeader(name)
}

query predicate test_HeaderDefinition_defines(HTTP::HeaderDefinition hd, string name, string value) {
  hd.defines(name, value) and hd.getRouteHandler() instanceof Connect::RouteHandler
}

query predicate test_ResponseExpr(HTTP::ResponseNode e, HTTP::RouteHandler res) {
  res = e.getRouteHandler()
}

query predicate test_HeaderDefinition(HTTP::HeaderDefinition hd, Connect::RouteHandler rh) {
  rh = hd.getRouteHandler()
}

query predicate test_RouteSetup_getServer(Connect::RouteSetup rs, DataFlow::Node res) {
  res = rs.getServer()
}

query predicate test_HeaderDefinition_getAHeaderName(HTTP::HeaderDefinition hd, string res) {
  hd.getRouteHandler() instanceof Connect::RouteHandler and res = hd.getAHeaderName()
}

query predicate test_ServerDefinition(Connect::ServerDefinition s) { any() }

query predicate test_RouteHandler_getAResponseExpr(Connect::RouteHandler rh, HTTP::ResponseNode res) {
  res = rh.getAResponseNode()
}

query predicate test_RouteSetup_getARouteHandler(Connect::RouteSetup r, DataFlow::SourceNode res) {
  res = r.getARouteHandler()
}

query predicate test_RouteHandler(Connect::RouteHandler rh, DataFlow::Node res) {
  res = rh.getServer()
}

query predicate test_RequestExpr(HTTP::RequestNode e, HTTP::RouteHandler res) {
  res = e.getRouteHandler()
}

query predicate test_Credentials(Connect::Credentials cr, string res) {
  res = cr.getCredentialsKind()
}

query predicate test_RouteHandler_getARequestExpr(Connect::RouteHandler rh, HTTP::RequestNode res) {
  res = rh.getARequestNode()
}
