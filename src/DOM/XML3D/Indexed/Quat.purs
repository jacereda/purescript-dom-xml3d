module DOM.XML3D.Indexed.Quat where

import Prelude

data Quat = Quat Number Number Number Number

renderQuat :: Quat -> String
renderQuat (Quat x y z w) = show x <> " " <> show y <> " " <> show z <> " " <> show w <> " "
