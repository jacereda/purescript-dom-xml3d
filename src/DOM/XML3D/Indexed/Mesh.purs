module DOM.XML3D.Indexed.Mesh where

data MeshType
  = Triangles
  | TriStrips
  | Points
  | Lines
  | LineStrips
  | Derived

renderMeshType :: MeshType -> String
renderMeshType = case _ of
  Triangles -> "triangles"
  TriStrips -> "tristrips"
  Points -> "points"
  Lines -> "lines"
  LineStrips -> "linestrips"
  Derived -> "derived"
