. {$HOME}/.config/fish/alias.fish
set LSCOLORS Exfxcxdxbxegedabagacad
function fish_vi_cursor; end
[ -f /usr/local/etc/profile.d/autojump.fish ] && . /usr/local/etc/profile.d/autojump.fish

setenv CC gcc-11
setenv CXX g++-11
setenv CPLUS_INCLUDE_PATH /usr/local/include/
setenv LIBRARY_PATH /usr/local/lib/
setenv LD_LIBRARY_PATH /usr/local/lib/

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
  set_color $fish_gruvbox_blue
	echo -n (whoami)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
    set_color $fish_gruvbox_yellow
		echo -n (basename $PWD)
	end
  set_color $fish_gruvbox_green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '| '
	set_color normal
end

# Use Ctrl+F to accept suggestions
bind -M insert \cf forward-char
bind -M insert \ck up-or-search
