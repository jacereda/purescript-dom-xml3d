module DOM.XML3D.Indexed.Mat4 where

import Prelude
import DOM.XML3D.Indexed.Vec4 (Vec4, renderVec4)

data Mat4 = Mat4 Vec4 Vec4 Vec4 Vec4

renderMat4 :: Mat4 -> String
renderMat4 (Mat4 x y z w) = renderVec4 x <> " " <> renderVec4 y <> " " <> renderVec4 z <> " " <> renderVec4 w <> " "
