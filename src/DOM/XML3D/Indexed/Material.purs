module DOM.XML3D.Indexed.Material where

import Prelude
import Halogen.HTML.Core (class IsProp)
import Halogen.VDom.DOM.Prop (propFromString)

data MatModel
  = Matte
  | Diffuse
  | Phong
  | Point

instance matModelIsProp :: IsProp MatModel where
  toPropValue = propFromString <<< renderMatModel

renderMatModel :: MatModel -> String
renderMatModel = case _ of
  Matte -> "urn:xml3d:material:matte"
  Diffuse -> "urn:xml3d:material:diffuse"
  Phong -> "urn:xml3d:material:phong"
  Point -> "urn:xml3d:material:point"
