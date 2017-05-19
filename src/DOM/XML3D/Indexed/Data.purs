module DOM.XML3D.Indexed.Data where

data Filter
  = Keep
  | Rename
  | Remove

renderFilter :: Filter -> String
renderFilter = case _ of
  Keep -> "keep"
  Rename -> "rename"
  Remove -> "remove"
