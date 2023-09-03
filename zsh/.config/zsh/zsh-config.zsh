## History
HISTFILE="$XDG_CACHE_HOME/zhistory"
HISTSIZE=100000   # Max events to store in internal history.
SAVEHIST=100000   # Max events to store in history file.

## ZSH configuration
# Treat these characters as part of a word.
WORDCHARS='_-*?[]~&.;!#$%^(){}<>'

## Options section
setopt autocd                                                   # change directory just by typing its name
# setopt correct                                                 # auto correct mistakes
setopt interactivecomments                                      # allow comments in interactive mode
setopt magicequalsubst                                          # enable filename expansion for arguments of the form ‘anything=expression’
setopt numericglobsort                                          # sort filenames numerically when it makes sense
setopt promptsubst                                              # enable command substitution in prompt
setopt nobeep                                                   # No beep
unsetopt BEEP                                                   # Hush now, quiet now.
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing

unsetopt BRACE_CCL        # Allow brace character class list expansion.
setopt HASH_LIST_ALL
unsetopt CORRECT_ALL
unsetopt NOMATCH          # hide error message if there is no match for the pattern
unsetopt MAIL_WARNING     # Don't print a warning message if a mail file has been accessed.
setopt IGNOREEOF

## Jobs
setopt LONG_LIST_JOBS     # List jobs in the long format by default.
setopt AUTO_RESUME        # Attempt to resume existing job before creating a new process.
setopt NOTIFY             # Report status of background jobs immediately.
unsetopt BG_NICE          # Don't run all background jobs at a lower priority.

setopt BANG_HIST                 # Don't treat '!' specially during expansion.
setopt EXTENDED_HISTORY          # Include start time in history records
setopt APPEND_HISTORY            # Appends history to history file on exit
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Remove old events if new event is a duplicate
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_REDUCE_BLANKS        # Minimize unnecessary whitespace
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
