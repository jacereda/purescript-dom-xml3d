module DOM.XML3D.Indexed.Vec3 where

import Prelude

data Vec3 = Vec3 Number Number Number

renderVec3 :: Vec3 -> String
renderVec3 (Vec3 x y z) = show x <> " " <> show y <> " " <> show z <> " "
