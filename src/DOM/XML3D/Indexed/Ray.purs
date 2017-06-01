module DOM.XML3D.Indexed.Ray where

import Prelude
import DOM.XML3D.Indexed.Vec3 (Vec3, renderVec3)

data Ray = Ray Vec3 Vec3

renderRay :: Ray -> String
renderRay (Ray o d) = renderVec3 o <> renderVec3 d
