module DOM.XML3D.Indexed where

import DOM.Event.Types (Event, MouseEvent)
import DOM.HTML.Indexed (CSSPixel)
import DOM.XML3D.Event.Types (FrameDrawnEvent)
import DOM.XML3D.Indexed.AxisAngle (AxisAngle)
import DOM.XML3D.Indexed.Data (Filter) as D
import DOM.XML3D.Indexed.Light (LightModel)
import DOM.XML3D.Indexed.Material (MatModel)
import DOM.XML3D.Indexed.Mesh (MeshType)
import DOM.XML3D.Indexed.Texture (Filter, Wrap)
import DOM.XML3D.Indexed.Vec3 (Vec3)
import DOM.XML3D.Indexed.View (ViewModel)

type DOMString = String

type Global r =
  ( id :: String
  | r
  )

type Transformable r = 
  ( transform :: DOMString
  | r
  )

type URI r = ( src :: DOMString | r )

type Named r = ( name :: String | r )

type Data r = URI r

type Value r = ( param :: Boolean | r )

type Keyed r = ( key :: Number | r )

type Including r = ( includes :: DOMString | r )

type Material r = ( material :: DOMString | r )

type Pickable r = 
  ( onDoubleClick :: MouseEvent
  , onClick :: MouseEvent
  , onMouseDown :: MouseEvent
  , onMouseEnter :: MouseEvent
  , onMouseLeave :: MouseEvent
  , onMouseMove :: MouseEvent
  , onMouseOver :: MouseEvent
  , onMouseOut :: MouseEvent
  , onMouseUp :: MouseEvent
  | r
  )
       
type XML3Dxml3d =
  Global
  ( width :: CSSPixel
  , height :: CSSPixel
  , view :: DOMString
  , onLoad :: Event
  , onFrameDrawn :: FrameDrawnEvent
  )

type XML3Dgroup = Global ( Material ( Transformable () ) )

type XML3Dview = Global ( Data ( Transformable ( model :: ViewModel ) ) )

type XML3Dmaterial = Global ( Data ( Transformable ( model :: MatModel ) ) )

type XML3Dlight = Global ( Data ( Transformable ( model :: LightModel) ) )
                          
type XML3Dmesh = Global ( Material ( Data ( Pickable ( Transformable ( type :: MeshType) ) ) ) )

type XML3Dmodel = Global ( Material ( Data ( Pickable ( Transformable () ) ) ) )

type XML3Ddata = Global ( Data ( compute :: String, filter :: D.Filter ) )

type XML3Ddataflow = Global ( Data ( out :: String ) )

type XML3Dfloat = Global ( Named ( Keyed ( Value () ) ) )

type XML3Dfloat2 = Global ( Named ( Keyed ( Value () ) ) )

type XML3Dfloat3 = Global ( Named ( Keyed ( Value () ) ) )

type XML3Dfloat4 = Global ( Named ( Keyed ( Value () ) ) )

type XML3Dfloat4x4 = Global ( Named ( Keyed ( Value () ) ) )

type XML3Dint = Global ( Named ( Keyed ( Value () ) ) )

type XML3Dint4 = Global ( Named ( Keyed ( Value () ) ) )

type XML3Dbool = Global ( Named ( Keyed ( Value () ) ) )

type XML3Dstring = Global ( Named ( Keyed ( Value () ) ) )

type XML3Dtexture = Global ( Named ( Keyed ( Value ( wrap :: Wrap
                                                   , filter :: Filter
                                                   ) ) ) )

type XML3Dtransform = Global ( Value ( Keyed ( scaleorientation :: AxisAngle
                                             , rotation :: AxisAngle
                                             , translation :: Vec3
                                             , scale :: Vec3
                                             , center :: Vec3
                                             ) ) )

type XML3Dasset = Global ( Named ( Data ( URI () ) ) )

type XML3Dassetdata = Global ( Named ( Data ( Including () ) ) )

type XML3Dassetmesh = Global ( Named ( Transformable ( Data ( Including ( Material ( type :: MeshType ) ) ) ) ) )

type XML3Ddefs = Global ()
