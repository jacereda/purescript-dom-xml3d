module DOM.XML3D.Indexed.IVec4 where

import Prelude

data IVec4 = IVec4 Int Int Int Int

renderIVec4 :: IVec4 -> String
renderIVec4 (IVec4 r g b a) = show r <> " " <> show g <> " " <> show b <> " " <> show a <> " "

