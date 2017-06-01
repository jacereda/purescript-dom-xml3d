module DOM.XML3D.Indexed.Material where

data MatModel
  = Matte
  | Diffuse
  | Phong
  | Point

renderMatModel :: MatModel -> String
renderMatModel = case _ of
  Matte -> "urn:xml3d:material:matte"
  Diffuse -> "urn:xml3d:material:diffuse"
  Phong -> "urn:xml3d:material:phong"
  Point -> "urn:xml3d:material:point"
