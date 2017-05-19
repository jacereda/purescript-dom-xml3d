module DOM.XML3D.Indexed.Light where

data LightModel
  = Point
  | Directional
  | Spot

renderLightModel :: LightModel -> String
renderLightModel = case _ of
  Point -> "urn:xml3d:light:point"
  Directional -> "urn:xml3d:light:directional"
  Spot -> "urn:xml3d:light:spot"
