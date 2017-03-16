module Styled.Html exposing (..)

{-|

This module provides styled shortcuts for each HTML function.

@docs node

# Tags

## Header
@docs h1, h2, h3, h4, h5, h6

## Grouping Content
@docs div, p, hr, pre, blockquote

## Text
@docs span, a, code, em, strong, i, b, u, sub, sup, br

## Lists
@docs ol, ul, li, dl, dt, dd

## Emdedded Content
@docs img, iframe, canvas, math

## Inputs
@docs form, input, textarea, button, select, option

## Sections
@docs section, nav, article, aside, header, footer, address, main_, body

## Figures
@docs figure, figcaption

## Tables
@docs table, caption, colgroup, col, tbody, thead, tfoot, tr, td, th

## Less Common Inputs
@docs fieldset, legend, label, datalist, optgroup, keygen, output, progress, meter

## Audio and Video
@docs audio, video, source, track

## Embedded Objects
@docs embed, object, param

## Text Edits
@docs ins, del

## Semantic Text
@docs small, cite, dfn, abbr, time, var, samp, kbd, s, q

## Less Common Text Tags
@docs mark, ruby, rt, rp, bdi, bdo, wbr

## Interactive Elements
@docs details, summary, menuitem, menu

-}

import Html exposing (Attribute, Html)
import Styled exposing (styled)
import Styled.Types exposing (Rule)


{-| General way to create syled HTML nodes. It is used to define all of the helper functions in this library.
-}
node :
    String
    -> List Rule
    -> List (Attribute msg)
    -> List (Html msg)
    -> Html msg
node =
    styled << Html.node



{-
   Tags
-}
-- Header


{-| -}
h1 : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
h1 =
    styled Html.h1


{-| -}
h2 : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
h2 =
    styled Html.h2


{-| -}
h3 : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
h3 =
    styled Html.h3


{-| -}
h4 : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
h4 =
    styled Html.h4


{-| -}
h5 : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
h5 =
    styled Html.h5


{-| -}
h6 : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
h6 =
    styled Html.h6



-- Grouping Content


{-| Represents a generic container with no special meaning.
-}
div : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
div =
    styled Html.div


{-| Defines a portion that should be displayed as a paragraph.
-}
p : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
p =
    styled Html.p


{-| Represents a thematic break between paragraphs of a section or article or any longer content.
-}
hr : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
hr =
    styled Html.hr


{-| Indicates that its content is preformatted and that this format must be preserved.
-}
pre : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
pre =
    styled Html.pre


{-| Represents a content that is quoted from another source.
-}
blockquote : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
blockquote =
    styled Html.blockquote



-- Text


{-| Represents text with no specific meaning. This has to be used when no other text-semantic element conveys an adequate meaning, which, in this case, is often brought by global attributes like class, lang, or dir.
-}
span : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
span =
    styled Html.span


{-| Represents a hyperlink, linking to another resource.
-}
a : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
a =
    styled Html.a


{-| Represents computer code.
-}
code : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
code =
    styled Html.code


{-| Represents emphasized text, like a stress accent.
-}
em : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
em =
    styled Html.em


{-| Represents especially important text.
-}
strong : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
strong =
    styled Html.strong


{-| Represents some text in an alternate voice or mood, or at least of different quality, such as a taxonomic designation, a technical term, an idiomatic phrase, a thought, or a ship name.
-}
i : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
i =
    styled Html.i


{-| Represents a text which to which attention is drawn for utilitarian purposes. It doesn't convey extra importance and doesn't imply an alternate voice.
-}
b : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
b =
    styled Html.b


{-| Represents a non-textual annoatation for which the conventional presentation is underlining, such labeling the text as being misspelt or labeling a proper name in Chinese text.
-}
u : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
u =
    styled Html.u


{-| Represent a subscript.
-}
sub : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
sub =
    styled Html.sub


{-| Represent a superscript.
-}
sup : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
sup =
    styled Html.sup


{-| Represents a line break.
-}
br : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
br =
    styled Html.br



-- Lists


{-| Defines an ordered list of items.
-}
ol : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
ol =
    styled Html.ol


{-| Defines an unordered list of items.
-}
ul : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
ul =
    styled Html.ul


{-| Defines a item of an enumeration list.
-}
li : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
li =
    styled Html.li


{-| Defines a definition list, that is, a list of terms and their associated definitions.
-}
dl : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
dl =
    styled Html.dl


{-| Represents a term defined by the next dd.
-}
dt : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
dt =
    styled Html.dt


{-| Represents the definition of the terms immediately listed before it.
-}
dd : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
dd =
    styled Html.dd



-- Emdedded Content


{-| Represents an image.
-}
img : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
img =
    styled Html.img


{-| Embedded an HTML document.
-}
iframe : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
iframe =
    styled Html.iframe


{-| Represents a bitmap area for graphics rendering.
-}
canvas : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
canvas =
    styled Html.canvas


{-| Defines a mathematical formula.
-}
math : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
math =
    styled Html.math



-- Inputs


{-| Represents a form, consisting of controls, that can be submitted to a server for processing.
-}
form : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
form =
    styled Html.form


{-| Represents a typed data field allowing the user to edit the data.
-}
input : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
input =
    styled Html.input


{-| Represents a multiline text edit control.
-}
textarea : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
textarea =
    styled Html.textarea


{-| Represents a button.
-}
button : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
button =
    styled Html.button


{-| Represents a control allowing selection among a set of options.
-}
select : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
select =
    styled Html.select


{-| Represents an option in a select element or a suggestion of a datalist element.
-}
option : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
option =
    styled Html.option



-- Sections


{-| Defines a section in a document.
-}
section : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
section =
    styled Html.section


{-| Defines a section that contains only navigation links.
-}
nav : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
nav =
    styled Html.nav


{-| Defines self-contained content that could exist independently of the rest of the content.
-}
article : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
article =
    styled Html.article


{-| Defines some content loosely related to the page content. If it is removed, the remaining content still makes sense.
-}
aside : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
aside =
    styled Html.aside


{-| Defines the header of a page or section. It often contains a logo, the title of the web site, and a navigational table of content.
-}
header : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
header =
    styled Html.header


{-| Defines the footer for a page or section. It often contains a copyright notice, some links to legal information, or addresses to give feedback.
-}
footer : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
footer =
    styled Html.footer


{-| Defines a section containing contact information.
-}
address : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
address =
    styled Html.address


{-| Defines the main or important content in the document. There is only one main element in the document.
-}
main_ : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
main_ =
    styled Html.main_


{-| Represents the content of an HTML document. There is only one body element in a document.
-}
body : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
body =
    styled Html.body



-- Figures


{-| Represents a figure illustrated as part of the document.
-}
figure : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
figure =
    styled Html.figure


{-| Represents the legend of a figure.
-}
figcaption : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
figcaption =
    styled Html.figcaption



-- Tables


{-| Represents data with more than one dimension.
-}
table : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
table =
    styled Html.table


{-| Represents the title of a table.
-}
caption : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
caption =
    styled Html.caption


{-| Represents a set of one or more columns of a table.
-}
colgroup : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
colgroup =
    styled Html.colgroup


{-| Represents a column of a table.
-}
col : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
col =
    styled Html.col


{-| Represents the block of rows that describes the concrete data of a table.
-}
tbody : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
tbody =
    styled Html.tbody


{-| Represents the block of rows that describes the column labels of a table.
-}
thead : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
thead =
    styled Html.thead


{-| Represents the block of rows that describes the column summaries of a table.
-}
tfoot : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
tfoot =
    styled Html.tfoot


{-| Represents a row of cells in a table.
-}
tr : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
tr =
    styled Html.tr


{-| Represents a data cell in a table.
-}
td : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
td =
    styled Html.td


{-| Represents a header cell in a table.
-}
th : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
th =
    styled Html.th



-- Less Common Inputs


{-| Represents a set of controls.
-}
fieldset : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
fieldset =
    styled Html.fieldset


{-| Represents the caption for a fieldset.
-}
legend : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
legend =
    styled Html.legend


{-| Represents the caption of a form control.
-}
label : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
label =
    styled Html.label


{-| Represents a set of predefined options for other controls.
-}
datalist : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
datalist =
    styled Html.datalist


{-| Represents a set of options, logically grouped.
-}
optgroup : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
optgroup =
    styled Html.optgroup


{-| Represents a key-pair generator control.
-}
keygen : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
keygen =
    styled Html.keygen


{-| Represents the result of a calculation.
-}
output : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
output =
    styled Html.output


{-| Represents the completion progress of a task.
-}
progress : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
progress =
    styled Html.progress


{-| Represents a scalar measurement (or a fractional value), within a known range.
-}
meter : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
meter =
    styled Html.meter



-- Audio and Video


{-| Represents a sound or audio stream.
-}
audio : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
audio =
    styled Html.audio


{-| Represents a video, the associated audio and captions, and controls.
-}
video : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
video =
    styled Html.video


{-| Allows authors to specify alternative media resources for media elements like video or audio.
-}
source : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
source =
    styled Html.source


{-| Allows authors to specify timed text track for media elements like video or audio.
-}
track : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
track =
    styled Html.track



-- Embedded Objects


{-| Represents a integration point for an external, often non-HTML, application or interactive content.
-}
embed : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
embed =
    styled Html.embed


{-| Represents an external resource, which is treated as an image, an HTML sub-document, or an external resource to be processed by a plug-in.
-}
object : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
object =
    styled Html.object


{-| Defines parameters for use by plug-ins invoked by object elements.
-}
param : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
param =
    styled Html.param



-- Text Edits


{-| Defines an addition to the document.
-}
ins : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
ins =
    styled Html.ins


{-| Defines a removal from the document.
-}
del : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
del =
    styled Html.del



-- Semantic Text


{-| Represents a side comment, that is, text like a disclaimer or a copyright, which is not essential to the comprehension of the document.
-}
small : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
small =
    styled Html.small


{-| Represents the title of a work.
-}
cite : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
cite =
    styled Html.cite


{-| Represents a term whose definition is contained in its nearest ancestor content.
-}
dfn : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
dfn =
    styled Html.dfn


{-| Represents an abbreviation or an acronym; the expansion of the abbreviation can be represented in the title attribute.
-}
abbr : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
abbr =
    styled Html.abbr


{-| Represents a date and time value; the machine-readable equivalent can be represented in the datetime attribute.
-}
time : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
time =
    styled Html.time


{-| Represents a variable. Specific cases where it should be used include an actual mathematical expression or programming context, an identifier representing a constant, a symbol identifying a physical quantity, a function parameter, or a mere placeholder in prose.
-}
var : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
var =
    styled Html.var


{-| Represents the output of a program or a computer.
-}
samp : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
samp =
    styled Html.samp


{-| Represents user input, often from the keyboard, but not necessarily; it may represent other input, like transcribed voice commands.
-}
kbd : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
kbd =
    styled Html.kbd


{-| Represents content that is no longer accurate or relevant.
-}
s : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
s =
    styled Html.s


{-| Represents an inline quotation.
-}
q : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
q =
    styled Html.q



-- Less Common Text Tags


{-| Represents text highlighted for reference purposes, that is for its relevance in another context.
-}
mark : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
mark =
    styled Html.mark


{-| Represents content to be marked with ruby annotations, short runs of text presented alongside the text. This is often used in conjunction with East Asian language where the annotations act as a guide for pronunciation, like the Japanese furigana.
-}
ruby : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
ruby =
    styled Html.ruby


{-| Represents the text of a ruby annotation.
-}
rt : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
rt =
    styled Html.rt


{-| Represents parenthesis around a ruby annotation, used to display the annotation in an alternate way by browsers not supporting the standard display for annotations.
-}
rp : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
rp =
    styled Html.rp


{-| Represents text that must be isolated from its surrounding for bidirectional text formatting. It allows embedding a span of text with a different, or unknown, directionality.
-}
bdi : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
bdi =
    styled Html.bdi


{-| Represents the directionality of its children, in order to explicitly override the Unicode bidirectional algorithm.
-}
bdo : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
bdo =
    styled Html.bdo


{-| Represents a line break opportunity, that is a suggested point for wrapping text in order to improve readability of text split on several lines.
-}
wbr : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
wbr =
    styled Html.wbr



-- Interactive Elements


{-| Represents a widget from which the user can obtain additional information or controls.
-}
details : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
details =
    styled Html.details


{-| Represents a summary, caption, or legend for a given details.
-}
summary : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
summary =
    styled Html.summary


{-| Represents a command that the user can invoke.
-}
menuitem : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
menuitem =
    styled Html.menuitem


{-| Represents a list of commands.
-}
menu : List Rule -> List (Attribute msg) -> List (Html msg) -> Html msg
menu =
    styled Html.menu
