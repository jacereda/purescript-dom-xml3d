module DOM.XML3D.Indexed.Vec2 where

import Prelude

data Vec2 = Vec2 Number Number

renderVec2 :: Vec2 -> String
renderVec2 (Vec2 x y) = show x <> " " <> show y
