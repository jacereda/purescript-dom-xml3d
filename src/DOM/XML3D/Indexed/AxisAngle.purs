module DOM.XML3D.Indexed.AxisAngle where

import Prelude

data AxisAngle = AxisAngle Number Number Number Number

renderAxisAngle :: AxisAngle -> String
renderAxisAngle (AxisAngle x y z a) = show x <> " " <> show y <> " " <> show z <> " " <> show a
