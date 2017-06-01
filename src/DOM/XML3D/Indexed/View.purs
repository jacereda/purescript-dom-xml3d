module DOM.XML3D.Indexed.View where

data ViewModel
  = Perspective
  | Projective

renderViewModel :: ViewModel -> String
renderViewModel = case _ of
  Perspective -> "urn:xml3d:view:perspective"
  Projective -> "urn:xml3d:view:projective"
