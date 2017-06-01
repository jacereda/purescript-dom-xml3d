module DOM.XML3D.Event.Types where

import DOM.Event.Types (Event)
import Data.Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
  
foreign import data FrameDrawnEvent :: Type

frameDrawnEventToEvent :: FrameDrawnEvent -> Event
frameDrawnEventToEvent = unsafeCoerce

readFrameDrawnEvent :: Foreign -> F FrameDrawnEvent
readFrameDrawnEvent = unsafeReadTagged "FrameDrawnEvent"

foreign import field :: forall a. Array String -> FrameDrawnEvent -> a

timeStart :: FrameDrawnEvent -> Number
timeStart = field ["timeStart"]

timeEnd :: FrameDrawnEvent -> Number
timeEnd = field ["timeEnd"]

renderTimeInMilliseconds :: FrameDrawnEvent -> Number
renderTimeInMilliseconds = field ["renderTimeInMilliseconds"]

countObjects :: FrameDrawnEvent -> Int
countObjects = field ["count", "objects"]

countPrimitives :: FrameDrawnEvent -> Int
countPrimitives = field ["count", "primitives"]
