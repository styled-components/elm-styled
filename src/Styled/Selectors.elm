module Styled.Selectors
    exposing
        ( select
          -- Pseudo Classes
        , active
        , any
        , checked
        , default
        , disabled
        , empty
        , enabled
        , firstChild
        , firstOfType
        , fullscreen
        , focus
        , hover
        , indeterminate
        , inRange
        , invalid
        , lang
        , lastChild
        , lastOfType
        , link
        , not
        , nthChild
        , nthLastChild
        , nthLastOfType
        , nthOfType
        , onlyChild
        , onlyOfType
        , optional
        , outOfRange
        , readOnly
        , readWrite
        , required
        , target
        , valid
        , visited
          -- Pseudo Elements
        , after
        , before
        , firstLetter
        , firstLine
        , selection
        , backdrop
        , placeholder
        , marker
        , spellingError
        , grammarError
        )

{-|

@docs select

# Pseudo Classes
@docs active, any, checked, default, disabled, empty, enabled, firstChild, firstOfType, fullscreen, focus, hover, indeterminate, inRange, invalid, lang, lastChild, lastOfType, link, not, nthChild, nthLastChild, nthLastOfType, nthOfType, onlyChild, onlyOfType, optional, outOfRange, readOnly, readWrite, required, target, valid, visited

# Pseudo Elements
@docs after, before, firstLetter, firstLine, selection, backdrop, placeholder, marker, spellingError, grammarError

-}

import Styled.Types exposing (..)


createSelector : String -> List Rule -> Rule
createSelector =
    Selector


{-| -}
select : String -> List Rule -> Rule
select selector =
    createSelector (" " ++ selector)



-- Pseudo Classes


{-| The :active CSS pseudo-class matches when an element is being activated by the user. It allows the page to give a feedback that the activation has been detected by the browser. When interacting with a mouse, this is typically the time between the user pressing the mouse button and releasing it. The :active pseudo-class is also typically matched when using the keyboard tab key. It is frequently used on `<a>` and `<button>` HTML elements, but may not be limited to just those.

    active
        [ backgroundColor blue
        , color red
        ]

-}
active : List Rule -> Rule
active =
    createSelector ":active"


{-| The :any() pseudo-class lets you quickly construct sets of similar selectors by establishing groups from which any of the included items will match. This is an alternative to having to repeat the entire selector for the one item that varies.

    any "div"
        [ backgroundColor blue
        , color red
        ]

-}
any : String -> List Rule -> Rule
any selector =
    createSelector (":any(" ++ selector ++ ")")


{-| The :checked CSS pseudo-class selector represents any radio (`<input type="radio">`), checkbox (`<input type="checkbox">`) or option (`<option>` in a `<select>`) element that is checked or toggled to an on state. The user can change this state by clicking on the element, or selecting a different value, in which case the :checked pseudo-class no longer applies to this element, but will to the relevant one.

    checked
        [ backgroundColor blue
        , color red
        ]

-}
checked : List Rule -> Rule
checked =
    createSelector ":checked"


{-| The :default CSS pseudo-class represents any user interface element that is the default among a group of similar elements.

    default
        [ backgroundColor blue
        , color red
        ]

-}
default : List Rule -> Rule
default =
    createSelector ":default"


{-| The :disabled CSS pseudo-class represents any disabled element. An element is disabled if it can't be activated (e.g. selected, clicked on or accept text input) or accept focus. The element also has an enabled state, in which it can be activated or accept focus.

    disabled
        [ backgroundColor blue
        , color red
        ]

-}
disabled : List Rule -> Rule
disabled =
    createSelector ":disabled"


{-| The :empty pseudo-class represents any element that has no children at all. Only element nodes and text (including whitespace) are considered. Comments or processing instructions do not affect whether an element is considered empty or not.

    empty
        [ backgroundColor blue
        , color red
        ]

-}
empty : List Rule -> Rule
empty =
    createSelector ":empty"


{-| The :enabled CSS pseudo-class represents any enabled element. An element is enabled if it can be activated (e.g. selected, clicked on or accept text input) or accept focus. The element also has a disabled state, in which it can't be activated or accept focus.

    enabled
        [ backgroundColor blue
        , color red
        ]

-}
enabled : List Rule -> Rule
enabled =
    createSelector ":enabled"


{-| The :first-child CSS pseudo-class represents any element that is the first child element of its parent.

    firstChild
        [ backgroundColor blue
        , color red
        ]

-}
firstChild : List Rule -> Rule
firstChild =
    createSelector ":first-child"


{-| The :first-of-type CSS pseudo-class represents the first sibling of its type in the list of children of its parent element.

    firstOfType
        [ backgroundColor blue
        , color red
        ]

-}
firstOfType : List Rule -> Rule
firstOfType =
    createSelector ":first-of-type"


{-| The :fullscreen CSS pseudo-class applies to any element that's currently being displayed in full-screen mode. It selects not only to the top level element, but to the whole stack of elements that appears.

    fullscreen
        [ backgroundColor blue
        , color red
        ]

-}
fullscreen : List Rule -> Rule
fullscreen =
    createSelector ":fullscreen"


{-| The :focus CSS pseudo-class is applied when an element has received focus, either from the user selecting it with the use of a keyboard or by activating with the mouse (e.g. a form input).

    focus
        [ backgroundColor blue
        , color red
        ]

-}
focus : List Rule -> Rule
focus =
    createSelector ":focus"


{-| The :hover CSS pseudo-class matches when the user designates an element with a pointing device, but does not necessarily activate it. This style may be overridden by any other link-related pseudo-classes, that is :link, :visited, and :active, appearing in subsequent rules. In order to style appropriately links, you need to put the :hover rule after the :link and :visited rules but before the :active one, as defined by the LVHA-order: :link — :visited — :hover — :active.

    hover
        [ backgroundColor blue
        , color red
        ]

-}
hover : List Rule -> Rule
hover =
    createSelector ":hover"


{-| The :indeterminate CSS pseudo-class matches a state that is neither checked nor unchecked. It's that in-between state that we might consider the "Maybe" between "Yes" and "No" options. The state is not fully determined, hence the name: indeterminate.

    indeterminate
        [ backgroundColor blue
        , color red
        ]

-}
indeterminate : List Rule -> Rule
indeterminate =
    createSelector ":indeterminate"


{-| The :in-range CSS pseudo-class matches when an element has its value attribute inside the specified range limitations for this element. It allows the page to give a feedback that the value currently defined using the element is inside the range limits.

    inRange
        [ backgroundColor blue
        , color red
        ]

-}
inRange : List Rule -> Rule
inRange =
    createSelector ":in-range"


{-| The :invalid CSS pseudo-class represents any `<input>` or `<form>` element whose content fails to validate according to the input's type setting. This allows you to easily have invalid fields adopt an appearance that helps the user identify and correct errors.

    invalid
        [ backgroundColor blue
        , color red
        ]

-}
invalid : List Rule -> Rule
invalid =
    createSelector ":invalid"


{-| The :lang CSS pseudo-class matches elements based on the language the element is determined to be in. In HTML, the language is determined by a combination of the lang attribute, the `<meta>` element, and possibly by information from the protocol (such as HTTP headers). For other document types there may be other document methods for determining the language.

    lang "en"
        [ backgroundColor blue
        , color red
        ]

-}
lang : String -> List Rule -> Rule
lang language =
    createSelector (":lang(" ++ language ++ ")")


{-| The :last-child CSS pseudo-class represents any element that is the last child element of its parent.

    lastChild
        [ backgroundColor blue
        , color red
        ]

-}
lastChild : List Rule -> Rule
lastChild =
    createSelector ":last-child"


{-| The :last-of-type CSS pseudo-class represents the last sibling with the given element name in the list of children of its parent element.

    lastOfType
        [ backgroundColor blue
        , color red
        ]

-}
lastOfType : List Rule -> Rule
lastOfType =
    createSelector ":last-of-type"


{-| The :link CSS pseudo-class lets you select links inside elements. This will select any link which has not yet been visited, even those already styled using selector with other link-related pseudo-classes like :hover, :active or :visited. In order to appropriately style links, you need to put the :link rule before the other ones, as defined by the LVHA-order: :link — :visited — :hover — :active. The :focus pseudo-class is usually placed right before or right after :hover, depending on the expected effect.

    link
        [ backgroundColor blue
        , color red
        ]

-}
link : List Rule -> Rule
link =
    createSelector ":link"


{-| The negation CSS pseudo-class, :not(X), is a functional notation taking a simple selector X as an argument. It matches an element that is not represented by the argument. X must not contain another negation selector.

    not "div"
        [ backgroundColor blue
        , color red
        ]

-}
not : String -> List Rule -> Rule
not selector =
    createSelector (":not(" ++ selector ++ ")")


{-| The :nth-child(an+b) CSS pseudo-class matches an element that has an+b-1 siblings before it in the document tree, for a given positive or zero value for n. More simply stated, the selector matches a number of child elements whose numeric position in the series of siblings matches the pattern an+b. In level 3 implementations, the matching element is required to have a parent. In level 4 implementations it does not.

    nthChild "2n+1"
        [ backgroundColor blue
        , color red
        ]

-}
nthChild : String -> List Rule -> Rule
nthChild nth =
    createSelector (":nth-child(" ++ nth ++ ")")


{-| The :nth-last-child(an+b) CSS pseudo-class matches an element that has an+b-1 siblings after it in the document tree, for a given positive or zero value for n, and has a parent element.

    nthLastChild "-n+4"
        [ backgroundColor blue
        , color red
        ]

-}
nthLastChild : String -> List Rule -> Rule
nthLastChild nth =
    createSelector (":nth-last-child(" ++ nth ++ ")")


{-| The :nth-last-of-type CSS pseudo-class matches an element that has an+b-1 siblings with the same element name after it in the document tree, for a given positive or zero value for n, and has a parent element. See :nth-child for a more thorough description of the syntax of its argument.

    nthLastOfType "2"
        [ backgroundColor blue
        , color red
        ]

-}
nthLastOfType : String -> List Rule -> Rule
nthLastOfType nth =
    createSelector (":nth-last-of-type(" ++ nth ++ ")")


{-| The :nth-of-type(an+b) CSS pseudo-class matches an element that has an+b-1 siblings with the same element name before it in the document tree, for a given positive or zero value for n, and has a parent element. See :nth-child for a more thorough description of the syntax of its argument. This is a more flexible and useful pseudo selector if you want to ensure you're selecting the same type of tag no matter where it is inside the parent element, or what other different tags appear before it.

    nthOfType "2n+1"
        [ backgroundColor blue
        , color red
        ]

-}
nthOfType : String -> List Rule -> Rule
nthOfType nth =
    createSelector (":nth-of-type(" ++ nth ++ ")")


{-| The :only-child CSS pseudo-class represents any element which is the only child of its parent. This is the same as :first-child:last-child or :nth-child(1):nth-last-child(1), but with a lower specificity.

    onlyChild
        [ backgroundColor blue
        , color red
        ]

-}
onlyChild : List Rule -> Rule
onlyChild =
    createSelector ":only-child"


{-| The :only-of-type CSS pseudo-class represents any element that has no siblings of the given type.

    onlyOfType
        [ backgroundColor blue
        , color red
        ]

-}
onlyOfType : List Rule -> Rule
onlyOfType =
    createSelector ":only-of-type"


{-| The :optional CSS pseudo-class represents any `<input>` or `<textarea>` element that does not have the required attribute set on it. This allows forms to easily indicate optional fields, and to style them accordingly.

    optional
        [ backgroundColor blue
        , color red
        ]

-}
optional : List Rule -> Rule
optional =
    createSelector ":optional"


{-| The :out-of-range CSS pseudo-class matches when an element has its value attribute outside the specified range limitations for this element. It allows the page to give a feedback that the value currently defined using the element is outside the range limits. A value can be outside of a range if it is either smaller or larger than maximum and minimum set values.

    outOfRange
        [ backgroundColor blue
        , color red
        ]

-}
outOfRange : List Rule -> Rule
outOfRange =
    createSelector ":out-of-range"


{-| The :read-only CSS pseudo-class matches when an element is not writable by the user.

    readOnly
        [ backgroundColor blue
        , color red
        ]

-}
readOnly : List Rule -> Rule
readOnly =
    createSelector ":read-only"


{-| The :read-write CSS pseudo-class matches when an element is editable by user like text input elements.

    readWrite
        [ backgroundColor blue
        , color red
        ]

-}
readWrite : List Rule -> Rule
readWrite =
    createSelector ":read-write"


{-| The :required CSS pseudo-class represents any `<input>` element that has the required attribute set on it. This allows forms to easily indicate which fields must have valid data before the form can be submitted.

    required
        [ backgroundColor blue
        , color red
        ]

-}
required : List Rule -> Rule
required =
    createSelector ":required"


{-| The :target pseudo-class represents the unique element, if any, with an id matching the fragment identifier of the URI of the document.

    target
        [ backgroundColor blue
        , color red
        ]

-}
target : List Rule -> Rule
target =
    createSelector ":target"


{-| The :valid CSS pseudo-class represents any `<input>` or `<form>` element whose content validates correctly according to the input's type setting. This allows to easily make valid fields adopt an appearance that helps the user confirm that their data is formatted properly.

    valid
        [ backgroundColor blue
        , color red
        ]

-}
valid : List Rule -> Rule
valid =
    createSelector ":valid"


{-| The :visited CSS pseudo-class lets you select only links that have been visited. This style may be overridden by any other link-related pseudo-classes, that is :link, :hover, and :active, appearing in subsequent rules. In order to style appropriately links, you need to put the :visited rule after the :link rule but before the other ones, defined in the LVHA-order: :link — :visited — :hover — :active.

    visited
        [ backgroundColor blue
        , color red
        ]

-}
visited : List Rule -> Rule
visited =
    createSelector ":visited"



-- Pseudo Elements


{-| The ::after CSS pseudo-element matches a virtual last child of the selected element. It is typically used to add cosmetic content to an element by using the content CSS property. This element is inline by default.

    after
        [ backgroundColor blue
        , color red
        ]

-}
after : List Rule -> Rule
after =
    createSelector "::after"


{-| The ::before CSS pseudo-element matches a virtual first child of the element. It is often used to add cosmetic content to an element by using the content property. This element is inline by default.

    before
        [ backgroundColor blue
        , color red
        ]

-}
before : List Rule -> Rule
before =
    createSelector "::before"


{-| The ::first-letter CSS pseudo-element selects the first letter of the first line of a block, if it is not preceded by any other content (such as images or inline tables) on its line.

    firstLetter
        [ backgroundColor blue
        , color red
        ]

-}
firstLetter : List Rule -> Rule
firstLetter =
    createSelector "::first-letter"


{-| The ::first-line CSS pseudo-element applies styles only to the first line of an element. The amount of the text on the first line depends of numerous factors, like the width of the element, width of the document, and the font size of the text. As all pseudo-elements, ::first-line does not match any real HTML element.

    firstLine
        [ backgroundColor blue
        , color red
        ]

-}
firstLine : List Rule -> Rule
firstLine =
    createSelector "::first-line"


{-| The ::selection CSS pseudo-element applies rules to the portion of a document that has been highlighted (e.g. selected with the mouse or another pointing device) by the user.

    selection
        [ backgroundColor blue
        , color red
        ]

-}
selection : List Rule -> Rule
selection =
    createSelector "::selection"


{-| Each element in the top layer's stack has a ::backdrop pseudo-element. This pseudo-element is a box rendered immediately below the element (and above the element below the element in the stack, if any), within the same top layer.

    backdrop
        [ backgroundColor blue
        , color red
        ]

-}
backdrop : List Rule -> Rule
backdrop =
    createSelector "::backdrop"


{-| The ::placeholder CSS pseudo-element represents the placeholder text of a form element. This allows web developers and theme designers to customize the appearance of placeholder text.

    placeholder
        [ backgroundColor blue
        , color red
        ]

-}
placeholder : List Rule -> Rule
placeholder =
    createSelector "::placeholder"


{-| The ::marker CSS pseudo-element represents the marker box of a list item (e.g. the bullet point or item number).

    marker
        [ backgroundColor blue
        , color red
        ]

-}
marker : List Rule -> Rule
marker =
    createSelector "::marker"


{-| The ::spelling-error CSS pseudo-element represents a text segment which the browser has flagged as incorrectly spelled.

    spellingError
        [ backgroundColor blue
        , color red
        ]

-}
spellingError : List Rule -> Rule
spellingError =
    createSelector "::spelling-error"


{-| The ::grammar-error CSS pseudo-element represents a text segment which the browser has flagged as having grammatical error(s).

    grammarError
        [ backgroundColor blue
        , color red
        ]

-}
grammarError : List Rule -> Rule
grammarError =
    createSelector "::grammar-error"
