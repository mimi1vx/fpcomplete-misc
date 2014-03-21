-- | This module stores your FP Haskell Center configuration.
--
-- It will not be loaded for this particular project, because it is possible
-- (although unlikely) to configure the IDE such that it can no longer be used
-- to edit the configuration.
module Config where

import FP.Config
import Prelude

-- | 'main' is called before the IDE is done loading. 'setConfig' is used here
--   to store your configuration options.
main :: Fay ()
main = setConfig $ defaultConfig
    {

    -- These are all of the default settings - modify these values and click
    -- the "Apply Configuration" wrench in the top left.  The following lines
    -- can be removed if desired, because these defaults are all stored in
    -- 'defaultConfig' as well.

    -- This determines how many spaces are inserted when the tab key is pressed,
    -- and how many spaces are inserted for automatic indentation.
      indentUnit = 4

    -- Whether matching brackets should be highlighted.
    , matchBrackets = True

    -- Specifies which pairs of brackets are auto-closed.  When the value is
    -- 'Nothing', then no auto-closing is done.
    --
    -- A good value to try for this is: Just "()[]{}''\"\""
    , closeBrackets = Nothing

    -- Whether line numbers are shown to the left of the code editor.
    , lineNumbers = True

    -- Whether trailing whitespace should be highlighted.
    , showTrailingSpace = True

    -- Whether the line with the caret should be highlighted.
    , highlightLine = False

    -- Whether occurrences of the selected identifier should be highlighted.
    , matchSelection = True

    -- Whether indentation alignment lines should be displayed.  While on
    -- by default, this feature is a work-in-progress.
    , showAlignments = True

    -- Whether code should automatically be reindented, shifting dependent
    -- indentation blocks.  Note that this feature is a work-in-progress.
    , autoReindent = False

    -- Whether type information is queried when the selection changes.
    , autoQueryTypeInfo = True

    } `extraKeys`
    -- Bindings in this list will override the defaults (which are listed here
    -- as documentation).  If you want to have a binding be handled by the code
    -- editor, use (Builtin Fallthrough).  For example, to rebind Hoogle to
    -- Ctrl-M:
    --
    --     [ ("Ctrl-I", Builtin Fallthrough)
    --     , ("Ctrl-M", Builtin Hoogle)
    --     ]
    --
    [ ("Ctrl-I", Builtin Hoogle)
    , ("Ctrl-B", Builtin GoToDef)
    , ("Ctrl-Space", Builtin Autocomplete)
    , ("Ctrl-Enter", Builtin RunOrRerun)
    ]
