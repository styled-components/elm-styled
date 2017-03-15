module Styled.Cursors exposing (..)

{-|

# Cursors
@docs alias, allScroll, cell, contextMenu, colResize, copy, crosshair, default, eResize, ewResize, grab, grabbing, help, move, nResize, neResize, neswResize, nsResize, nwResize, nwseResize, noDrop, notAllowed, pointer, progress, rowResize, sResize, seResize, swResize, text, verticalText, wResize, wait, zoomIn, zoomOut

-}

import Styled.Types exposing (..)


{-| <span style="cursor: alias;">The cursor indicates an alias of something is to be created.</span>

    cursor alias

-}
alias : Cursor {}
alias =
    { value = "alias"
    , cursor = Compatible
    }


{-| <span style="cursor: all-scroll;">The cursor indicates that something can be scrolled in any direction.</span>

    cursor allScroll

-}
allScroll : Cursor {}
allScroll =
    { value = "all-scroll"
    , cursor = Compatible
    }


{-| <span style="cursor: cell;">The cursor indicates that a cell (or set of cells) may be selected.</span>

    cursor cell

-}
cell : Cursor {}
cell =
    { value = "cell"
    , cursor = Compatible
    }


{-| <span style="cursor: context-menu;">The cursor indicates that a context-menu is available.</span>

    cursor contextMenu

-}
contextMenu : Cursor {}
contextMenu =
    { value = "context-menu"
    , cursor = Compatible
    }


{-| <span style="cursor: col-resize;">The cursor indicates that the column can be resized horizontally.</span>

    cursor colResize

-}
colResize : Cursor {}
colResize =
    { value = "col-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: copy;">The cursor indicates something is to be copied.</span>

    cursor copy

-}
copy : Cursor {}
copy =
    { value = "copy"
    , cursor = Compatible
    }


{-| <span style="cursor: crosshair;">The cursor render as a crosshair.</span>

    cursor crosshair

-}
crosshair : Cursor {}
crosshair =
    { value = "crosshair"
    , cursor = Compatible
    }


{-| <span style="cursor: default;">The default cursor.</span>

    cursor default

-}
default : Cursor {}
default =
    { value = "default"
    , cursor = Compatible
    }


{-| <span style="cursor: e-resize;">The cursor indicates that an edge of a box is to be moved right (east).</span>

    cursor eResize

-}
eResize : Cursor {}
eResize =
    { value = "e-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: ew-resize;">Indicates a bidirectional resize cursor.</span>

    cursor ewResize

-}
ewResize : Cursor {}
ewResize =
    { value = "ew-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: grab;">The cursor indicates that something can be grabbed.</span>

    cursor grab

-}
grab : Cursor {}
grab =
    { value = "grab"
    , cursor = Compatible
    }


{-| <span style="cursor: grabbing;">The cursor indicates that something can be grabbed.</span>

    cursor grabbing

-}
grabbing : Cursor {}
grabbing =
    { value = "grabbing"
    , cursor = Compatible
    }


{-| <span style="cursor: help;">The cursor indicates that help is available.</span>

    cursor help

-}
help : Cursor {}
help =
    { value = "help"
    , cursor = Compatible
    }


{-| <span style="cursor: move;">The cursor indicates something is to be moved.</span>

    cursor move

-}
move : Cursor {}
move =
    { value = "move"
    , cursor = Compatible
    }


{-| <span style="cursor: n-resize;">The cursor indicates that an edge of a box is to be moved up (north).</span>

    cursor nResize

-}
nResize : Cursor {}
nResize =
    { value = "n-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: ne-resize;">The cursor indicates that an edge of a box is to be moved up and right (.north/east)</span>

    cursor neResize

-}
neResize : Cursor {}
neResize =
    { value = "ne-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: nesw-resize;">Indicates a bidirectional resize cursor.</span>

    cursor neswResize

-}
neswResize : Cursor {}
neswResize =
    { value = "nesw-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: ns-resize;">Indicates a bidirectional resize cursor.</span>

    cursor nsResize

-}
nsResize : Cursor {}
nsResize =
    { value = "ns-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: nw-resize;">The cursor indicates that an edge of a box is to be moved up and left (.north/west)</span>

    cursor nwResize

-}
nwResize : Cursor {}
nwResize =
    { value = "nw-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: nwse-resize;">Indicates a bidirectional resize cursor.</span>

    cursor nwseResize

-}
nwseResize : Cursor {}
nwseResize =
    { value = "nwse-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: no-drop;">The cursor indicates that the dragged item cannot be dropped here.</span>

    cursor noDrop

-}
noDrop : Cursor {}
noDrop =
    { value = "no-drop"
    , cursor = Compatible
    }


{-| <span style="cursor: not-allowed;">The cursor indicates that the requested action will not be executed.</span>

    cursor notAllowed

-}
notAllowed : Cursor {}
notAllowed =
    { value = "not-allowed"
    , cursor = Compatible
    }


{-| <span style="cursor: pointer;">The cursor is a pointer and indicates a link.</span>

    cursor pointer

-}
pointer : Cursor {}
pointer =
    { value = "pointer"
    , cursor = Compatible
    }


{-| <span style="cursor: progress;">The cursor indicates that the program is busy (in progress).</span>

    cursor progress

-}
progress : Cursor {}
progress =
    { value = "progress"
    , cursor = Compatible
    }


{-| <span style="cursor: row-resize;">The cursor indicates that the row can be resized vertically.</span>

    cursor rowResize

-}
rowResize : Cursor {}
rowResize =
    { value = "row-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: s-resize;">The cursor indicates that an edge of a box is to be moved down (south).</span>

    cursor sResize

-}
sResize : Cursor {}
sResize =
    { value = "s-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: se-resize;">The cursor indicates that an edge of a box is to be moved down and right (.south/east)</span>

    cursor seResize

-}
seResize : Cursor {}
seResize =
    { value = "se-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: sw-resize;">The cursor indicates that an edge of a box is to be moved down and left (.south/west)</span>

    cursor swResize

-}
swResize : Cursor {}
swResize =
    { value = "sw-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: text;">The cursor indicates text that may be selected.</span>

    cursor text

-}
text : Cursor {}
text =
    { value = "text"
    , cursor = Compatible
    }


{-| <span style="cursor: vertical-text;">The cursor indicates vertical-text that may be selected.</span>

    cursor verticalText

-}
verticalText : Cursor {}
verticalText =
    { value = "vertical-text"
    , cursor = Compatible
    }


{-| <span style="cursor: w-resize;">The cursor indicates that an edge of a box is to be moved left (west).</span>

    cursor wResize

-}
wResize : Cursor {}
wResize =
    { value = "w-resize"
    , cursor = Compatible
    }


{-| <span style="cursor: wait;">The cursor indicates that the program is busy.</span>

    cursor wait

-}
wait : Cursor {}
wait =
    { value = "wait"
    , cursor = Compatible
    }


{-| <span style="cursor: zoom-in;">The cursor indicates that something can be zoomed in.</span>

    cursor zoomIn

-}
zoomIn : Cursor {}
zoomIn =
    { value = "zoom-in"
    , cursor = Compatible
    }


{-| <span style="cursor: zoom-out;">The cursor indicates that something can be zoomed out.</span>

    cursor zoomOut

-}
zoomOut : Cursor {}
zoomOut =
    { value = "zoom-out"
    , cursor = Compatible
    }
