module DOM.XML3D.Indexed.Box where

import Prelude
import DOM.XML3D.Indexed.Vec3 (Vec3, renderVec3)

data Box = Box Vec3 Vec3

renderBox :: Box -> String
renderBox (Box a b) = renderVec3 a <> renderVec3 b
