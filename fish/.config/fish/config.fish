set SPACEFISH_PROMPT_ADD_NEWLINE false
set -U fish_greeting

fish_add_path ~/.fnm
fish_add_path ~/bin 

starship init fish | source