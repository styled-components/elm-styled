module Styled.Cursors exposing (..)

{-|

# Cursors
@docs alias, allScroll, cell, contextMenu, colResize, copy, crosshair, default, eResize, ewResize, grab, grabbing, help, move, nResize, neResize, neswResize, nsResize, nwResize, nwseResize, noDrop, notAllowed, pointer, progress, rowResize, sResize, seResize, swResize, text, verticalText, wResize, wait, zoomIn, zoomOut

-}

import Styled.Types exposing (..)


{-| The cursor indicates an alias of something is to be created.

    cursor alias

-}
alias : Cursor {}
alias =
    { value = "alias"
    , cursor = Compatible
    }


{-| The cursor indicates that something can be scrolled in any direction.

    cursor allScroll

-}
allScroll : Cursor {}
allScroll =
    { value = "all-scroll"
    , cursor = Compatible
    }


{-| The cursor indicates that a cell (or set of cells) may be selected.

    cursor cell

-}
cell : Cursor {}
cell =
    { value = "cell"
    , cursor = Compatible
    }


{-| The cursor indicates that a context-menu is available.

    cursor contextMenu

-}
contextMenu : Cursor {}
contextMenu =
    { value = "context-menu"
    , cursor = Compatible
    }


{-| The cursor indicates that the column can be resized horizontally.

    cursor colResize

-}
colResize : Cursor {}
colResize =
    { value = "col-resize"
    , cursor = Compatible
    }


{-| The cursor indicates something is to be copied.

    cursor copy

-}
copy : Cursor {}
copy =
    { value = "copy"
    , cursor = Compatible
    }


{-| The cursor render as a crosshair.

    cursor crosshair

-}
crosshair : Cursor {}
crosshair =
    { value = "crosshair"
    , cursor = Compatible
    }


{-| The default cursor.

    cursor default

-}
default : Cursor {}
default =
    { value = "default"
    , cursor = Compatible
    }


{-| The cursor indicates that an edge of a box is to be moved right (east).

    cursor eResize

-}
eResize : Cursor {}
eResize =
    { value = "e-resize"
    , cursor = Compatible
    }


{-| Indicates a bidirectional resize cursor.

    cursor ewResize

-}
ewResize : Cursor {}
ewResize =
    { value = "ew-resize"
    , cursor = Compatible
    }


{-| The cursor indicates that something can be grabbed.

    cursor grab

-}
grab : Cursor {}
grab =
    { value = "grab"
    , cursor = Compatible
    }


{-| The cursor indicates that something can be grabbed.

    cursor grabbing

-}
grabbing : Cursor {}
grabbing =
    { value = "grabbing"
    , cursor = Compatible
    }


{-| The cursor indicates that help is available.

    cursor help

-}
help : Cursor {}
help =
    { value = "help"
    , cursor = Compatible
    }


{-| The cursor indicates something is to be moved.

    cursor move

-}
move : Cursor {}
move =
    { value = "move"
    , cursor = Compatible
    }


{-| The cursor indicates that an edge of a box is to be moved up (north).

    cursor nResize

-}
nResize : Cursor {}
nResize =
    { value = "n-resize"
    , cursor = Compatible
    }


{-| The cursor indicates that an edge of a box is to be moved up and right (.north/east)

    cursor neResize

-}
neResize : Cursor {}
neResize =
    { value = "ne-resize"
    , cursor = Compatible
    }


{-| Indicates a bidirectional resize cursor.

    cursor neswResize

-}
neswResize : Cursor {}
neswResize =
    { value = "nesw-resize"
    , cursor = Compatible
    }


{-| Indicates a bidirectional resize cursor.

    cursor nsResize

-}
nsResize : Cursor {}
nsResize =
    { value = "ns-resize"
    , cursor = Compatible
    }


{-| The cursor indicates that an edge of a box is to be moved up and left (.north/west)

    cursor nwResize

-}
nwResize : Cursor {}
nwResize =
    { value = "nw-resize"
    , cursor = Compatible
    }


{-| Indicates a bidirectional resize cursor.

    cursor nwseResize

-}
nwseResize : Cursor {}
nwseResize =
    { value = "nwse-resize"
    , cursor = Compatible
    }


{-| The cursor indicates that the dragged item cannot be dropped here.

    cursor noDrop

-}
noDrop : Cursor {}
noDrop =
    { value = "no-drop"
    , cursor = Compatible
    }


{-| The cursor indicates that the requested action will not be executed.

    cursor notAllowed

-}
notAllowed : Cursor {}
notAllowed =
    { value = "not-allowed"
    , cursor = Compatible
    }


{-| The cursor is a pointer and indicates a link.

    cursor pointer

-}
pointer : Cursor {}
pointer =
    { value = "pointer"
    , cursor = Compatible
    }


{-| The cursor indicates that the program is busy (in progress).

    cursor progress

-}
progress : Cursor {}
progress =
    { value = "progress"
    , cursor = Compatible
    }


{-| The cursor indicates that the row can be resized vertically.

    cursor rowResize

-}
rowResize : Cursor {}
rowResize =
    { value = "row-resize"
    , cursor = Compatible
    }


{-| The cursor indicates that an edge of a box is to be moved down (south).

    cursor sResize

-}
sResize : Cursor {}
sResize =
    { value = "s-resize"
    , cursor = Compatible
    }


{-| The cursor indicates that an edge of a box is to be moved down and right (.south/east)

    cursor seResize

-}
seResize : Cursor {}
seResize =
    { value = "se-resize"
    , cursor = Compatible
    }


{-| The cursor indicates that an edge of a box is to be moved down and left (.south/west)

    cursor swResize

-}
swResize : Cursor {}
swResize =
    { value = "sw-resize"
    , cursor = Compatible
    }


{-| The cursor indicates text that may be selected.

    cursor text

-}
text : Cursor {}
text =
    { value = "text"
    , cursor = Compatible
    }


{-| The cursor indicates vertical-text that may be selected.

    cursor verticalText

-}
verticalText : Cursor {}
verticalText =
    { value = "vertical-text"
    , cursor = Compatible
    }


{-| The cursor indicates that an edge of a box is to be moved left (west).

    cursor wResize

-}
wResize : Cursor {}
wResize =
    { value = "w-resize"
    , cursor = Compatible
    }


{-| The cursor indicates that the program is busy.

    cursor wait

-}
wait : Cursor {}
wait =
    { value = "wait"
    , cursor = Compatible
    }


{-| The cursor indicates that something can be zoomed in.

    cursor zoomIn

-}
zoomIn : Cursor {}
zoomIn =
    { value = "zoom-in"
    , cursor = Compatible
    }


{-| The cursor indicates that something can be zoomed out.

    cursor zoomOut

-}
zoomOut : Cursor {}
zoomOut =
    { value = "zoom-out"
    , cursor = Compatible
    }
