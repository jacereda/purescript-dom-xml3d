module DOM.XML3D.Indexed.Vec4 where

import Prelude

data Vec4 = Vec4 Number Number Number Number

renderVec4 :: Vec4 -> String
renderVec4 (Vec4 x y z w) = show x <> " " <> show y <> " " <> show z <> " " <> show w <> " "

