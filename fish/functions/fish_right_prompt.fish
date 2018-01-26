set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showuntrackedfiles 1

set -g __fish_git_prompt_color_branch magenta --bold
set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix " "

set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_dirtystate "●"
set -g __fish_git_prompt_char_untrackedfiles "●"
set -g __fish_git_prompt_char_conflictedstate "●"
set -g __fish_git_prompt_char_cleanstate ""
set -g __fish_git_prompt_char_stateseparator " "

# Hide file counts
set -g __fish_git_prompt_hide_stagedstate 1
set -g __fish_git_prompt_hide_invalidstate 1
set -g __fish_git_prompt_hide_dirtystate 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_dirtystate red
set -g __fish_git_prompt_color_stagedstate green
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles brgrey
set -g __fish_git_prompt_color_cleanstate green
set -g __fish_git_prompt_color_upstream magenta

function fish_right_prompt --description 'Write out the right-hand prompt'
	printf '%s%s%s' (set_color $fish_color_cwd) (prompt_pwd) (__fish_git_prompt ' @ %s')
end
