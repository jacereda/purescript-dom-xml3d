module DOM.XML3D.Indexed.View where

import Prelude
import Halogen.HTML.Core (class IsProp)
import Halogen.VDom.DOM.Prop (propFromString)

data ViewModel
  = Perspective
  | Projective

instance viewModelIsProp :: IsProp ViewModel where
  toPropValue = propFromString <<< renderViewModel

renderViewModel :: ViewModel -> String
renderViewModel = case _ of
  Perspective -> "urn:xml3d:view:perspective"
  Projective -> "urn:xml3d:view:projective"
