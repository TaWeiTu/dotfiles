function vimtex
  if test -e $argv[1]
    nvim $argv[1]
  else
    cp {$HOME}/Documents/template.tex $argv[1]
    nvim $argv[1]
  end
end
