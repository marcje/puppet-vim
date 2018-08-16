# @summary Initializes the vim module.
#
# @param case_insensitive_matching
#   Sets case insensitive matching.
# @param dark_background
#   Brighter colours for when using syntax highlighting on a dark background.
# @param highlight_matches
#   Highlights matches for a search. Use ':noh' to clear highlighting.
# @param incremental_search
#   Jumps to the next logical match while typing a search.
# @param indentation
#   Tries to use proper indentation for the current filetype.
# @param last_position
#   Jumps to the last known position when reopening a file using vim.
# @param lazy_redraw
#   Only redraw the screen when it is necessary.
# @param max_line_length
#   Sets the maximum line length and draws a vertical bar.
# @param mouse_mode
#   Lets you use the mouse in vim.
# @param show_cmd
#   Shows (partial) command information.
# @param show_line_numbers
#   Shows the line numbers of a file.
# @param show_matching_brackets
#   Highlights the matching bracket when selecting a bracket.
# @param syntax_highlighting
#   Tries to use syntax highlighting if the filetype is known.
# @param smart_matching
#   Only uses case insensitive matching when using only lower case letters.
# @param soft_tab_stop
#   Sets the amount of spaces you see when a tab is used.
# @param tab_stop
#   Sets the amount of spaces a tab uses.
# @param tabs_to_spaces
#   Uses spaces instead of a tab character.
#
# @note
# Because most of our servers have exactly the same vim configuration, we have
# set a lot of default vaules. These can however be easily overriden when necessary.
#
class vim(
    NotUndef[Boolean] $case_insensitive_matching = true,
    NotUndef[Boolean] $dark_background           = true,
    NotUndef[Boolean] $highlight_matches         = true,
    NotUndef[Boolean] $incremental_search        = true,
    NotUndef[Boolean] $indentation               = true,
    NotUndef[Boolean] $last_position             = true,
    NotUndef[Boolean] $lazy_redraw               = true,
    NotUndef[Integer] $max_line_length           = 120,
    NotUndef[String]  $mouse_mode                = 'a',
    NotUndef[Boolean] $show_cmd                  = true,
    NotUndef[Boolean] $show_line_numbers         = true,
    NotUndef[Boolean] $show_matching_brackets    = true,
    NotUndef[Boolean] $syntax_highlighting       = true,
    NotUndef[Boolean] $smart_matching            = true,
    NotUndef[Integer] $soft_tab_stop             = 4,
    NotUndef[Integer] $tab_stop                  = 4,
    NotUndef[Boolean] $tabs_to_spaces            = true
){
    class{'vim::install':}
    class{'vim::config':}

    Class['vim::install']
    ->Class['vim::config']
}
