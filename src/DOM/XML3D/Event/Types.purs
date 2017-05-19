module DOM.XML3D.Event.Types where

import DOM.Event.Types (Event)
import Data.Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
  
foreign import data FrameDrawnEvent :: Type

frameDrawnEventToEvent :: FrameDrawnEvent -> Event
frameDrawnEventToEvent = unsafeCoerce

readFrameDrawnEvent :: Foreign -> F FrameDrawnEvent
readFrameDrawnEvent = unsafeReadTagged "FrameDrawnEvent"
