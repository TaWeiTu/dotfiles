. {$HOME}/.config/fish/alias.fish
set LSCOLORS Exfxcxdxbxegedabagacad
function fish_vi_cursor; end
[ -f /usr/local/etc/profile.d/autojump.fish ] && . /usr/local/etc/profile.d/autojump.fish

setenv CC gcc-10
setenv CXX g++-10
setenv CPLUS_INCLUDE_PATH /usr/local/include/
setenv LIBRARY_PATH /usr/local/lib/

# set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
# set_color 00a6b2
# set_color 00809F 
  set_color $fish_gruvbox_blue
	echo -n (whoami)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
# set_color b58900
    set_color $fish_gruvbox_yellow
		echo -n (basename $PWD)
	end
# set_color 87af5f
  set_color $fish_gruvbox_green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '| '
	set_color normal
end
