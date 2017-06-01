module DOM.XML3D.Indexed.Texture where

import Prelude

data WrapMode
  = Repeat
  | Clamp

renderWrapMode :: WrapMode -> String
renderWrapMode = case _ of
  Repeat -> "repeat"
  Clamp -> "clamp"


data Wrap = Wrap WrapMode WrapMode

renderWrap :: Wrap -> String
renderWrap (Wrap s t) = renderWrapMode s <> " " <> renderWrapMode t

data MinFilter
  = MinNearest
  | MinLinear
  | MinNearestMipmapNearest
  | MinNearestMipmapLinear
  | MinLinearMipmapNearest
  | MinLinearMipmapLinear

renderMinFilter :: MinFilter -> String
renderMinFilter = case _ of
  MinNearest -> "nearest"
  MinLinear -> "linear"
  MinNearestMipmapNearest -> "nearest-mipmap-nearest"
  MinNearestMipmapLinear -> "nearest-mipmap-linear"
  MinLinearMipmapNearest -> "linear-mipmap-nearest"
  MinLinearMipmapLinear -> "linear-mipmap-linear"

data MagFilter
  = MagNearest
  | MagLinear

renderMagFilter :: MagFilter -> String
renderMagFilter = case _ of
  MagNearest -> "nearest"
  MagLinear -> "linear"

data Filter = Filter MinFilter MagFilter

renderFilter :: Filter -> String
renderFilter (Filter min mag) = renderMinFilter min <> " " <> renderMagFilter mag

